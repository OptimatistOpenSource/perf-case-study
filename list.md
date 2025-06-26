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

- call c
- rip
- inline
- black_box
- small array simd
