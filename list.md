# Rust 性能优化

## Uninit xor

一个结构体

```rust
#[derive(Default, Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ZeroInit {
    state: [u64; 25],
}
```

如果通过 `Default` 进行全 0 初始化， 在生成的汇编中会看到类似 `vxorps %xmm0, %xmm0, %xmm0` 的清零操作，这些操作是函数热点。
但是在一些场景中初始状态是不重要的，在之后一定会重新赋值， 可以先申请无意义的 state，之后再将整个 state 重新赋值。

对于库开发者来说使用 `Default` 统一初始化可以提高代码的可维护性，这时我们需要根据需求特化这些场景。

```rust
impl ZeroInit {
    #[expect(invalid_value, clippy::uninit_assumed_init)]
    pub fn new_uninit() -> Self {
        Self {
            state: unsafe { MaybeUninit::uninit().assume_init() },
            is_uninit: true,
        }
    }

    pub fn assign(&mut self, datas: &[u64; 25]) {
        self.state[..].copy_from_slice(datas);
    }
}
```

在 Rust 中 `MaybeUninit::uninit().assume_init()` 被标记为 UB, 如果说严格按照正确的使用方法，
那么 `state` 就需要改为 `[MaybeUninit<u64>; 25]` 传染接下来的所有逻辑，这会使得代码非常丑陋。

## 链式调用由于所有权转移生成了不必要的 memcpy

```rust
const LENGTH: usize = 65536;

#[derive(Clone, Debug)]
pub struct ChainState {
    pub state: [u64; LENGTH],
}


impl ChainState {
    pub fn new() -> Self {
        Self { state: [0; LENGTH] }
    }

    pub fn chain(mut self) -> Self {
        self.update();
        self
    }

    pub fn chain_refm(&mut self) -> &mut Self {
        self.update();
        self
    }

    pub fn update(&mut self) {
        update_data::update(&mut self.state);
    }

    pub fn finalize(self) -> u64 {
        self.state.into_iter().sum()
    }
}

pub fn many_chain(arg: ChainState) -> u64 {
    arg.chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .finalize()
}

pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    arg.chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm();
    arg.finalize()
}
```

其中 `update_data::update` 是来自外部crate的函数

```rust
pub fn update(state: &mut [u64]) {
    for ele in state {
        *ele = ele.pow(2);
    }
}
```

使用 `cargo-show-asm` 工具分别查看 `many_chain`, `many_chain_refm` 函数汇编。

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib many_chain 0
cargo asm --native --this-workspace --att --rust -p perf-case --lib many_chain 1
```

可以看到 `chain` 方法中每个 `update` 之前都调用了 `memcpy`。

```asm
        movq memcpy@GOTPCREL(%rip), %r15
                // $HOME/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:21
                self
        movl $524288, %edx
        movq %r14, %rdi
        movq %rbx, %rsi
        callq *%r15
                // $HOME/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:30
                update_data::update(&mut self.state);
        movl $65536, %esi
        movq %r14, %rdi
        callq *%r12
        leaq 524312(%rsp), %rbx
                // $HOME/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:21
                self
        movl $524288, %edx
        movq %rbx, %rdi
        movq %r14, %rsi
        callq *%r15
                // $HOME/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:30
                update_data::update(&mut self.state);
```

而 `chain_refm` 没有出现多余的 `memcpy`。

benchmark

```txt
     Running benches/chain_call.rs (target/release/deps/chain_call-914693e9ca2573a5)
Chain ownership         time:   [214.03 µs 214.97 µs 215.87 µs]
Found 2 outliers among 100 measurements (2.00%)
  2 (2.00%) low mild

Chain refm              time:   [136.68 µs 137.56 µs 138.39 µs]
                        change: [+2.4008% +3.4803% +4.4724%] (p = 0.00 < 0.05)
                        Performance has regressed.
Found 7 outliers among 100 measurements (7.00%)
  6 (6.00%) low mild
  1 (1.00%) high severe
```

如果为 `update_data::update` 标注 `#[inline(always)]`，就可以消除 `memcpy`，但还有差距。

```txt
     Running benches/chain_call.rs (target/release/deps/chain_call-914693e9ca2573a5)
Chain ownership         time:   [149.39 µs 150.24 µs 151.09 µs]
                        change: [−3.1131% −2.4517% −1.8175%] (p = 0.00 < 0.05)
                        Performance has improved.

Chain refm              time:   [133.23 µs 133.90 µs 134.56 µs]
                        change: [−2.3447% −1.7028% −1.0186%] (p = 0.00 < 0.05)
                        Performance has improved.
Found 2 outliers among 100 measurements (2.00%)
  2 (2.00%) low mild
```

- call c
- rip
- inline
- black_box
- small array simd
