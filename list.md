# Rust 性能优化

以下测试在 intel i5-14400F 平台测试，此平台有 avx2 功能。

## Black box

在基准测试中很容易因为编译器的优化将想要测试的函数被优化掉，很可能零秒就将基准测试运行完毕。

Rust 在 1.66 版本中稳定了 `std::hint::black_box` 阻止编译器的一些优化。

在 [Rust 1.66 blog](https://blog.rust-lang.org/2022/12/15/Rust-1.66.0/#core-hint-black-box) 中的例子

```rust
#[inline(always)]
fn push_cap(v: &mut Vec<i32>) {
    for i in 0..4 {
        v.push(i);
        std::hint::black_box(v.as_ptr());
    }
}

pub fn bench_push() -> Duration {
    let mut v = Vec::with_capacity(4);
    let now = Instant::now();
    push_cap(&mut v);
    now.elapsed()
}
```

使用 cargo-show-asm 观察生成的汇编。

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib bench_push 0
```

```rust
        callq *std::time::Instant::now@GOTPCREL(%rip)
        movq %rax, 16(%rsp)
        movl %edx, 24(%rsp)
        movl $0, (%rbx)
        movq %rbx, 8(%rsp)
        leaq 8(%rsp), %rax
        #APP
        #NO_APP
        movl $1, 4(%rbx)
        movq %rbx, 8(%rsp)
        #APP
        #NO_APP
        movl $2, 8(%rbx)
        movq %rbx, 8(%rsp)
        #APP
        #NO_APP
        movl $3, 12(%rbx)
        movq %rbx, 8(%rsp)
        #APP
        #NO_APP
        leaq 16(%rsp), %rdi
                // src/black_box.rs:17
                now.elapsed()
        callq *std::time::Instant::elapsed@GOTPCREL(%rip)
```

通过 `black_box` 避免将 `push` 优化，在循环中增加了指令 `movq %rbx, 8(%rsp)` 在每次循环中都向栈中写入，在我们的一次 benchmark 中，
由于在循环中调用 `black_box` 导致观察到的性能和实际收益不符，针对这种情况需要使用一些其他的手段来避免编译器的优化。

```rust
pub fn black_box() {
    unsafe { asm!("", options(nostack, preserves_flags)) };
}

#[inline(always)]
fn push_cap_1(v: &mut Vec<i32>) {
    for i in 0..4 {
        v.push(i);
        black_box();
    }
}

pub fn bench_push_1() -> Duration {
    let mut v = Vec::with_capacity(4);
    let now = Instant::now();
    push_cap_1(&mut v);
    let t = now.elapsed();
    std::hint::black_box(v);
    t
}
```

查看其汇编

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib bench_push_1
```

```rust
        callq *std::time::Instant::now@GOTPCREL(%rip)
        movq %rax, 24(%rsp)
        movl %edx, 32(%rsp)
        movl $0, (%rbx)
                // src/black_box.rs:22
                unsafe { asm!("", options(nostack, preserves_flags)) };
        #APP
        #NO_APP
        movl $1, 4(%rbx)
                // src/black_box.rs:22
                unsafe { asm!("", options(nostack, preserves_flags)) };
        #APP
        #NO_APP
        movl $2, 8(%rbx)
                // src/black_box.rs:22
                unsafe { asm!("", options(nostack, preserves_flags)) };
        #APP
        #NO_APP
        movl $3, 12(%rbx)
                // src/black_box.rs:22
                unsafe { asm!("", options(nostack, preserves_flags)) };
        #APP
        #NO_APP
        leaq 24(%rsp), %rdi
                // src/black_box.rs:37
                let t = now.elapsed();
        callq *std::time::Instant::elapsed@GOTPCREL(%rip)
```

在循环中放入一条内联汇编，并将 `push_cap_1` 操作后的 `Vec` 使用 `black_box` 包裹，
同样可以避免将循环中的 `push` 优化，而且在循环中没有额外的向栈写入。

在一些建议中需要为函数的输入和输出使用 `std::hint::black_box` 包裹，尝试在这个例子中将输入的 `Vec` 包裹。

```rust
pub fn bench_push_wrapper() -> Duration {
    let mut v = std::hint::black_box(Vec::with_capacity(4));
    let now = Instant::now();
    push_cap(&mut v);
    now.elapsed()
}
```

查看汇编

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib bench_push_wrapper
```

```asm
                // src/black_box.rs:43
                let now = Instant::now();
        callq *std::time::Instant::now@GOTPCREL(%rip)
        movq %rax, 40(%rsp)
        movl %edx, 48(%rsp)
        movq 24(%rsp), %rbx
        cmpq 8(%rsp), %rbx
        jne .LBB4_4
        leaq .Lanon.03461f051f2d3909cd66723de69bb01d.1(%rip), %rsi
        leaq 8(%rsp), %rdi
        callq *alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
```

这使得在循环中不知道 `Vec` 的容量，每次迭代就多了 `grow_one` 的调用。

在 `black_box` 相关 issue 中有[另一个版本的实现](https://github.com/rust-lang/rust/issues/64102#issuecomment-674175929)。

```rust
pub fn better_black_box(mut int_x: u64) -> u64 {
    unsafe { asm!("/* {x} */", x = inout(reg) int_x, options(nostack)) };
    int_x
}
```

不知道为何官方采用了向栈写入的实现，如果发现不能满足自己的用例，可以尝试内联汇编达到想要的效果。

## 零初始化

对于这样一个结构体

```rust
#[derive(Default, Clone, Copy, Debug)]
pub struct ZeroInit {
    state: [u64; 25],
}

impl ZeroInit {
    pub fn assign(&mut self, data: &[u64; 25]) {
        self.state[..].copy_from_slice(data);
    }
}
```

如果通过 `Default` 进行全 0 初始化， 在生成的汇编中会看到类似 `vxorps %xmm0, %xmm0, %xmm0` 的清零操作，
在一次 profiling 中观察到这些清零操作成为了整个函数的热点。
在一些场景中初始状态是不重要的，在之后一定会重新赋值， 可以先申请无意义的 state，之后再将整个 state 重新赋值。

对于库开发者来说使用 `Default` 统一初始化可以提高代码的可维护性，这时我们需要根据需求特化这些场景。

可以使用 cargo 的 patch 功能为这个结构体新增一个方法。

```rust
impl ZeroInit {
    #[expect(invalid_value, clippy::uninit_assumed_init)]
    pub fn new_uninit() -> Self {
        Self {
            state: unsafe { MaybeUninit::uninit().assume_init() },
        }
    }
}
```

> [!NOTE]
>
> 这个例子会让 `miri` 报告 UB，在生产中需要根据实际情况进行调整。

对于一些场景申请一个无意义的 state 来去掉清零操作，可以进行一定的性能提升。

使用 `criterion` 进行 benchmark。通过 `black_box` 避免将清零操作优化掉。

```rust
pub fn init_it(data: &[u64; 25]) -> ZeroInit {
    let mut a = ZeroInit::new();
    crate::black_box::better_black_box(a.state.as_ptr() as u64);
    a.assign(data);
    a
}

pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
    let mut a = ZeroInit::new_uninit();
    crate::black_box::better_black_box(a.state.as_ptr() as u64);
    a.assign(data);
    a
}
```

![zero violin](./assets/zero-violin.svg)

这个 case 中性能有 50% 的差距。由于这个基准测试非常小，结果的波动会很大。

查看其汇编。

```asm
00000000000d1920 <perf_case::zero_init::init_it::h0a2532e5d8e942a0>:
; perf_case::zero_init::init_it::h0a2532e5d8e942a0():
   d1920: 53                            pushq   %rbx
   d1921: 48 81 ec d0 00 00 00          subq    $0xd0, %rsp
   d1928: 48 89 fb                      movq    %rdi, %rbx
   d192b: c5 f8 57 c0                   vxorps  %xmm0, %xmm0, %xmm0
   d192f: c5 fc 11 84 24 a0 00 00 00    vmovups %ymm0, 0xa0(%rsp)
   d1938: c5 fc 11 84 24 80 00 00 00    vmovups %ymm0, 0x80(%rsp)
   d1941: c5 fc 11 44 24 60             vmovups %ymm0, 0x60(%rsp)
   d1947: c5 fc 11 44 24 40             vmovups %ymm0, 0x40(%rsp)
   d194d: c5 fc 11 44 24 20             vmovups %ymm0, 0x20(%rsp)
   d1953: c5 fc 11 04 24                vmovups %ymm0, (%rsp)
   d1958: 48 c7 84 24 c0 00 00 00 00 00 00 00   movq    $0x0, 0xc0(%rsp)
   d1964: 48 89 e7                      movq    %rsp, %rdi
   d1967: 48 89 f8                      movq    %rdi, %rax
   d196a: c5 f8 77                      vzeroupper
   d196d: ff 15 35 32 20 00             callq   *0x203235(%rip)         # 0x2d4ba8 <_GLOBAL_OFFSET_TABLE_+0x40>
   d1973: 48 8b 84 24 c0 00 00 00       movq    0xc0(%rsp), %rax
   d197b: 48 89 83 c0 00 00 00          movq    %rax, 0xc0(%rbx)
   d1982: c5 fc 10 84 24 a0 00 00 00    vmovups 0xa0(%rsp), %ymm0
   d198b: c5 fc 11 83 a0 00 00 00       vmovups %ymm0, 0xa0(%rbx)
   d1993: c5 fc 10 84 24 80 00 00 00    vmovups 0x80(%rsp), %ymm0
   d199c: c5 fc 11 83 80 00 00 00       vmovups %ymm0, 0x80(%rbx)
   d19a4: c5 fc 10 04 24                vmovups (%rsp), %ymm0
   d19a9: c5 fc 10 4c 24 20             vmovups 0x20(%rsp), %ymm1
   d19af: c5 fc 10 54 24 40             vmovups 0x40(%rsp), %ymm2
   d19b5: c5 fc 10 5c 24 60             vmovups 0x60(%rsp), %ymm3
   d19bb: c5 fc 11 5b 60                vmovups %ymm3, 0x60(%rbx)
   d19c0: c5 fc 11 53 40                vmovups %ymm2, 0x40(%rbx)
   d19c5: c5 fc 11 4b 20                vmovups %ymm1, 0x20(%rbx)
   d19ca: c5 fc 11 03                   vmovups %ymm0, (%rbx)
   d19ce: 48 89 d8                      movq    %rbx, %rax
   d19d1: 48 81 c4 d0 00 00 00          addq    $0xd0, %rsp
   d19d8: 5b                            popq    %rbx
   d19d9: c5 f8 77                      vzeroupper
   d19dc: c3                            retq
   d19dd: 00 00                         addb    %al, (%rax)
   d19df: 00 53 48                      addb    %dl, 0x48(%rbx)
```

```asm
00000000000d19e0 <perf_case::zero_init::uninit_it::h644881c85d5f5897>:
; perf_case::zero_init::uninit_it::h644881c85d5f5897():
   d19e0: 53                            pushq   %rbx
   d19e1: 48 81 ec d0 00 00 00          subq    $0xd0, %rsp
   d19e8: 48 89 fb                      movq    %rdi, %rbx
   d19eb: 48 8d 7c 24 08                leaq    0x8(%rsp), %rdi
   d19f0: 48 89 f8                      movq    %rdi, %rax
   d19f3: ff 15 af 31 20 00             callq   *0x2031af(%rip)         # 0x2d4ba8 <_GLOBAL_OFFSET_TABLE_+0x40>
   d19f9: 48 8b 84 24 c8 00 00 00       movq    0xc8(%rsp), %rax
   d1a01: 48 89 83 c0 00 00 00          movq    %rax, 0xc0(%rbx)
   d1a08: c5 fc 10 84 24 a8 00 00 00    vmovups 0xa8(%rsp), %ymm0
   d1a11: c5 fc 11 83 a0 00 00 00       vmovups %ymm0, 0xa0(%rbx)
   d1a19: c5 fc 10 84 24 88 00 00 00    vmovups 0x88(%rsp), %ymm0
   d1a22: c5 fc 11 83 80 00 00 00       vmovups %ymm0, 0x80(%rbx)
   d1a2a: c5 fc 10 44 24 08             vmovups 0x8(%rsp), %ymm0
   d1a30: c5 fc 10 4c 24 28             vmovups 0x28(%rsp), %ymm1
   d1a36: c5 fc 10 54 24 48             vmovups 0x48(%rsp), %ymm2
   d1a3c: c5 fc 10 5c 24 68             vmovups 0x68(%rsp), %ymm3
   d1a42: c5 fc 11 5b 60                vmovups %ymm3, 0x60(%rbx)
   d1a47: c5 fc 11 53 40                vmovups %ymm2, 0x40(%rbx)
   d1a4c: c5 fc 11 4b 20                vmovups %ymm1, 0x20(%rbx)
   d1a51: c5 fc 11 03                   vmovups %ymm0, (%rbx)
   d1a55: 48 89 d8                      movq    %rbx, %rax
   d1a58: 48 81 c4 d0 00 00 00          addq    $0xd0, %rsp
   d1a5f: 5b                            popq    %rbx
   d1a60: c5 f8 77                      vzeroupper
   d1a63: c3                            retq
```

可以看到 uninit 版本省去了清零操作。

## 链式调用由于 move 成了不必要的 memcpy

```rust
const LENGTH: usize = 65536;
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

其中 `update_data::update` 是来自外部 crate 的函数。

```rust
pub fn update(state: &mut [u64]) {
    for ele in state {
        *ele = ele.pow(2);
    }
}
```

看一下 `many_chain`, `many_chain_refm` 两者差距

![chain call violin](./assets/chain-call-violin.svg)

两段看起来逻辑一样的代码为什么性能有 86% 的差距？

使用 cargo-show-asm 工具分别查看 `many_chain`, `many_chain_refm` 函数汇编。

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib many_chain 0
```

在 `chain` 方法中每个 `update` 之前都调用了 `memcpy`。

```asm
                // src/chain.rs:32
                update_data::update(&mut self.state);
        movq update_data::update@GOTPCREL(%rip), %r12
        movl $65536, %esi
        callq *%r12
        leaq 8(%rsp), %r14
        movq memcpy@GOTPCREL(%rip), %r15
                // src/chain.rs:23
                self
        movl $524288, %edx
        movq %r14, %rdi
        movq %rbx, %rsi
        callq *%r15
                // src/chain.rs:32
                update_data::update(&mut self.state);
        movl $65536, %esi
        movq %r14, %rdi
        callq *%r12
        leaq 524312(%rsp), %rbx
                // src/chain.rs:23
                self
        movl $524288, %edx
        movq %rbx, %rdi
        movq %r14, %rsi
        callq *%r15
                // src/chain.rs:32
                update_data::update(&mut self.state);
```

而 `chain_refm` 在调用 `update` 之前 没有出现多余的 `memcpy`。

```bash
cargo asm --native --this-workspace --att --rust -p perf-case --lib many_chain_refm
```

```asm
                // src/chain.rs:32
                update_data::update(&mut self.state);
        movq update_data::update@GOTPCREL(%rip), %r14
        movl $65536, %esi
        callq *%r14
        movl $65536, %esi
        movq %rbx, %rdi
        callq *%r14
        movl $65536, %esi
        movq %rbx, %rdi
        callq *%r14
        movl $65536, %esi
        movq %rbx, %rdi
        callq *%r14
        movl $65536, %esi
        movq %rbx, %rdi
        callq *%r14
```

### inline `update_data::update`

```rust
#[inline(always)]
pub fn update(state: &mut [u64]) {
    for ele in state {
        *ele = ele.pow(2);
    }
}
```

![chain call inline](./assets/chain-call-inline-violin.svg)

这次差距只有 28.8%

查看具体发生了什么。

为基准测试开启 debuginfo。

```bash
rust-objdump -SldC target/release/deps/chain_call-d5576e73e830552f | less
```

在其中搜索 `chain.rs:23`

```asm
; /path/to/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d089d: ba 00 00 08 00                movl    $0x80000, %edx          # imm = 0x80000
   d08a2: c5 f8 77                      vzeroupper
   d08a5: ff 15 4d 5b 20 00             callq   *0x205b4d(%rip)         # 0x2d63f8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
   d08ab: b8 0c 00 00 00                movl    $0xc, %eax
```

这里只有一处因为 move 导致了 `memcpy`。

### 打开 lto

> [!NOTE]
>
> 去掉了 inline

![chain call lto](./assets/chain-call-lto-violin.svg)

依然有着 79% 差距

```rust
rust-objdump -SldC target/release/deps/chain_call-226534585303772e | less
```

```asm
; /path/to/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   a0f80: ba 00 00 08 00                movl    $0x80000, %edx          # imm = 0x80000
   a0f85: 4c 89 ef                      movq    %r13, %rdi
   a0f88: 4c 89 e6                      movq    %r12, %rsi
   a0f8b: c5 f8 77                      vzeroupper
   a0f8e: 41 ff d7                      callq   *%r15
   a0f91: b8 0c 00 00 00                movl    $0xc, %eax
   a0f96: 66 2e 0f 1f 84 00 00 00 00 00 nopw    %cs:(%rax,%rax)
……
; /path/to/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   a1038: ba 00 00 08 00                movl    $0x80000, %edx          # imm = 0x80000
   a103d: 4c 89 f7                      movq    %r14, %rdi
   a1040: 4c 89 ee                      movq    %r13, %rsi
   a1043: c5 f8 77                      vzeroupper
   a1046: 41 ff d7                      callq   *%r15
   a1049: b8 0c 00 00 00                movl    $0xc, %eax
   a104e: 66 90                         nop
……
```

仍然有多处 `memcpy`。

但是这里与 `./crates/perf-case/src/bin/chain_move.rs` 调用生成的汇编有所不同。

```bash
cargo b --profile profiling
rust-objdump -SldC target/profiling/chain_move | less
```

```asm
; /path/to/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   10061: ba 00 00 08 00                movl    $0x80000, %edx          # imm = 0x80000
   10066: c5 f8 77                      vzeroupper
   10069: ff 15 09 cf 03 00             callq   *0x3cf09(%rip)          # 0x4cf78 <_GLOBAL_OFFSET_TABLE_+0x190>
   1006f: c5 f9 ef c0                   vpxor   %xmm0, %xmm0, %xmm0
   10073: b8 3e 00 00 00                movl    $0x3e, %eax
```

这种情况只有一处因为 move 导致的 `memcpy`。

- rip
- inline
