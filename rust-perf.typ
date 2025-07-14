#import "@preview/touying:0.6.1": *
#import "@preview/zebraw:0.5.5": *
#show: zebraw
#import themes.metropolis: *

// #import "@preview/codly:1.3.0": *
// #import "@preview/codly-languages:0.1.8": *
// #show: codly-init.with()
// #codly(
//   number-format: none,
//   languages: codly-languages
// )

#import "@preview/numbly:0.1.0": numbly

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [Rust 性能优化],
    subtitle: [rust 程序中发现的优化点。],
    author: [Authors],
    date: datetime.today(),
    institution: [Optimatist],
    logo: image("assets/optimatist.png", height: 1000%),
  ),
)

#show footnote.entry: set text(size: 8pt)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#show link: underline
#set text(15pt)

#title-slide(logo: image("assets/optimatist.png", height: 10%))

// 以下测试在 intel i5-14400F 平台测试，此平台有 avx2 功能。

#focus-slide[
  = `Default` trait 对性能造成的影响
]

#slide(composer: (1fr, auto))[
  #set text(.95em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  ```rust
  // ./crates/perf-case/src/zero_init.rs
  #[derive(Default, Clone, Copy, Debug)]
  pub struct ZeroInit {
      state: [u64; 25],
  }

  impl ZeroInit {
      pub fn assign_3rd(&mut self, data: &[u64; 25]) {
          update_data::assign(&mut self.state, data);
      }
  }
  ```

  ```rust
  // 来自另一个 update-data crate
  // ./crates/update-data/src/lib.rs
  #[cfg_attr(feature = "inline", inline(always))]
  pub fn assign(state: &mut [u64; 25], data: &[u64; 25]) {
      state.copy_from_slice(data);
  }
  ```

  这样一段代码，使用 `Default` 为 `ZeroInit` 全零初始化会有什么问题？
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 3em)[
    构建一个 bin 来观察它的汇编。

    ```rust
    // ./crates/perf-case/src/zero_init.rs
    #[inline(never)]
    pub fn init_it(data: &[u64; 25]) -> ZeroInit {
        let mut a = ZeroInit::default();

        a.assign_3rd(data);
        a
    }
    ```

    ```rust
    // ./crates/perf-case/src/bin/zero_init.rs
    use perf_case::zero_init::init_it;

    fn main() {
        let arr = [1; 25];
        init_it(&arr);
    }
    ```

    使用 #raw("rust-objdump -SldC target/release/zero_init", lang: "bash") 命令查看其汇编。
  ][
    #set text(.70em)

    // #show: columns.with(2, gutter: 3em)

    ```asm
    00000000000141a0 <perf_case::zero_init::init_it::hea2e57095669a05f>:
    ; perf_case::zero_init::init_it::hea2e57095669a05f():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
    ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
       141a0: 53                            pushq   %rbx
       141a1: 48 81 ec d0 00 00 00          subq    $0xd0, %rsp
       141a8: 48 89 fb                      movq    %rdi, %rbx
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/mod.rs:477
    ;                 [$t::default(), $($ts::default()),*]
       141ab: c5 f8 57 c0                   vxorps  %xmm0, %xmm0, %xmm0
       141af: c5 fc 11 84 24 a0 00 00 00    vmovups %ymm0, 0xa0(%rsp)
       141b8: c5 fc 11 84 24 80 00 00 00    vmovups %ymm0, 0x80(%rsp)
       141c1: c5 fc 11 44 24 60             vmovups %ymm0, 0x60(%rsp)
       141c7: c5 fc 11 44 24 40             vmovups %ymm0, 0x40(%rsp)
       141cd: c5 fc 11 44 24 20             vmovups %ymm0, 0x20(%rsp)
       141d3: c5 fc 11 04 24                vmovups %ymm0, (%rsp)
       141d8: 48 c7 84 24 c0 00 00 00 00 00 00 00   movq    $0x0, 0xc0(%rsp)
       141e4: 48 89 e7                      movq    %rsp, %rdi
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
    ;         update_data::assign(&mut self.state, data);
       141e7: c5 f8 77                      vzeroupper
       141ea: ff 15 40 04 04 00             callq   *0x40440(%rip)          # 0x54630 <_GLOBAL_OFFSET_TABLE_+0x48>
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:32
    ;     a
       141f0: 48 8b 84 24 c0 00 00 00       movq    0xc0(%rsp), %rax
       141f8: 48 89 83 c0 00 00 00          movq    %rax, 0xc0(%rbx)
       141ff: c5 fc 10 84 24 a0 00 00 00    vmovups 0xa0(%rsp), %ymm0
       14208: c5 fc 11 83 a0 00 00 00       vmovups %ymm0, 0xa0(%rbx)
       14210: c5 fc 10 84 24 80 00 00 00    vmovups 0x80(%rsp), %ymm0
       14219: c5 fc 11 83 80 00 00 00       vmovups %ymm0, 0x80(%rbx)
       14221: c5 fc 10 04 24                vmovups (%rsp), %ymm0
       14226: c5 fc 10 4c 24 20             vmovups 0x20(%rsp), %ymm1
       1422c: c5 fc 10 54 24 40             vmovups 0x40(%rsp), %ymm2
       14232: c5 fc 10 5c 24 60             vmovups 0x60(%rsp), %ymm3
       14238: c5 fc 11 5b 60                vmovups %ymm3, 0x60(%rbx)
       1423d: c5 fc 11 53 40                vmovups %ymm2, 0x40(%rbx)
       14242: c5 fc 11 4b 20                vmovups %ymm1, 0x20(%rbx)
       14247: c5 fc 11 03                   vmovups %ymm0, (%rbx)
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
    ; }
    ```

    其中有一条 #raw("vxorps  %xmm0, %xmm0, %xmm0", lang: "asm") 清零操作。
    并且调用 `update_data::assign` 前后都有数据拷贝。
  ]
]

#slide(composer: (1fr, auto))[
  #set text(.50em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

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
  #footnote[
    这个 `MaybeUninit` 使用方式在rust里面被定义为 UB，Rust 使用未初始化数据非常困难。
  ]

  对于上个例子，我们知道清零操作是完全没有必要的，它立即就会被覆盖掉。
  这里可以手动添加另一个方法。

  ```rust
  // ./crates/perf-case/src/bin/zero_uninit.rs
  use perf_case::zero_init::uninit_it;

  fn main() {
      let arr = [1; 25];
      uninit_it(&arr);
  }
  ```

  使用 #raw("rust-objdump -SldC target/release/zero_uninit", lang: "bash") 命令查看其汇编。

  ```asm
  00000000000141b0 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>:
  ; perf_case::zero_init::uninit_it::h1f640c62abb13c34():
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:36
  ; pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
     141b0: 53                            pushq   %rbx
     141b1: 48 89 fb                      movq    %rdi, %rbx
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
  ;         update_data::assign(&mut self.state, data);
     141b4: ff 15 d6 03 04 00             callq   *0x403d6(%rip)          # 0x54590 <_GLOBAL_OFFSET_TABLE_+0x48>
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
  ; }
     141ba: 48 89 d8                      movq    %rbx, %rax
     141bd: 5b                            popq    %rbx
     141be: c3                            retq
     141bf: 00 48 8b                      addb    %cl, -0x75(%rax)
  ```

  没有了之前的数据清零和拷贝。
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  使用 `criterion` 框架进行基准测试。

  #grid(columns: (auto, 67%), gutter: 2em)[
    ```rust
    // ./crates/perf-case/benches/zero_init.rs
    fn bench_zero_init(c: &mut Criterion) {
        let arr = [0; 25];

        let mut group = c.benchmark_group("Zero");

        group.bench_with_input("init", &arr, |b, datas| {
            b.iter(|| {
                black_box(zero_init::init_it(datas));
            });
        });
        group.bench_with_input("uninit", &arr, |b, datas| {
            b.iter(|| {
                black_box(zero_init::uninit_it(datas));
            });
        });

        group.finish();
    }
    ```
  ][
    运行 #raw("taskset --cpu-list 0 cargo bench -- Zero", lang: "bash")

    Criterion 会自动生成相关图表，从 `./target/criterion/Zero/report/violin.svg` 复制相关图。

    #image("./assets/zero-violin.svg")

    #set align(center)
    #table(
      align: left,
      columns: (100pt, 100pt),
      stroke: none,
      table.header([Case Zero], [Time/ns]),
      table.hline(),
      [init], [7.3036],
      [uninit], [2.8101],
      table.hline(),
    )
  ]
]

#slide(composer: (1fr, auto))[
  查看其汇编来确认具体发生了什么。

  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #raw("rust-objdump -SldC target/release/deps/zero_init-4bd469cda42c17ad", lang: "bash")

  #grid(columns: 2, gutter: 5em)[
    #set text(.65em)
    ```asm
    00000000000d0740 <perf_case::zero_init::init_it::hea2e57095669a05f>:
    ; perf_case::zero_init::init_it::hea2e57095669a05f():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
    ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
       d0740: 53                           	pushq	%rbx
       d0741: 48 81 ec d0 00 00 00         	subq	$0xd0, %rsp
       d0748: 48 89 fb                     	movq	%rdi, %rbx
    ; /path.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/mod.rs:477
    ;                 [$t::default(), $($ts::default()),*]
       d074b: c5 f8 57 c0                  	vxorps	%xmm0, %xmm0, %xmm0
       d074f: c5 fc 11 84 24 a0 00 00 00   	vmovups	%ymm0, 0xa0(%rsp)
       d0758: c5 fc 11 84 24 80 00 00 00   	vmovups	%ymm0, 0x80(%rsp)
       d0761: c5 fc 11 44 24 60            	vmovups	%ymm0, 0x60(%rsp)
       d0767: c5 fc 11 44 24 40            	vmovups	%ymm0, 0x40(%rsp)
       d076d: c5 fc 11 44 24 20            	vmovups	%ymm0, 0x20(%rsp)
       d0773: c5 fc 11 04 24               	vmovups	%ymm0, (%rsp)
       d0778: 48 c7 84 24 c0 00 00 00 00 00 00 00  	movq	$0x0, 0xc0(%rsp)
       d0784: 48 89 e7                     	movq	%rsp, %rdi
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
    ;         update_data::assign(&mut self.state, data);
       d0787: c5 f8 77                     	vzeroupper
       d078a: ff 15 00 35 20 00            	callq	*0x203500(%rip)         # 0x2d3c90 <_GLOBAL_OFFSET_TABLE_+0x40>
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:32
    ;     a
       d0790: 48 8b 84 24 c0 00 00 00      	movq	0xc0(%rsp), %rax
       d0798: 48 89 83 c0 00 00 00         	movq	%rax, 0xc0(%rbx)
       d079f: c5 fc 10 84 24 a0 00 00 00   	vmovups	0xa0(%rsp), %ymm0
       d07a8: c5 fc 11 83 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rbx)
       d07b0: c5 fc 10 84 24 80 00 00 00   	vmovups	0x80(%rsp), %ymm0
       d07b9: c5 fc 11 83 80 00 00 00      	vmovups	%ymm0, 0x80(%rbx)
       d07c1: c5 fc 10 04 24               	vmovups	(%rsp), %ymm0
       d07c6: c5 fc 10 4c 24 20            	vmovups	0x20(%rsp), %ymm1
       d07cc: c5 fc 10 54 24 40            	vmovups	0x40(%rsp), %ymm2
       d07d2: c5 fc 10 5c 24 60            	vmovups	0x60(%rsp), %ymm3
       d07d8: c5 fc 11 5b 60               	vmovups	%ymm3, 0x60(%rbx)
       d07dd: c5 fc 11 53 40               	vmovups	%ymm2, 0x40(%rbx)
       d07e2: c5 fc 11 4b 20               	vmovups	%ymm1, 0x20(%rbx)
       d07e7: c5 fc 11 03                  	vmovups	%ymm0, (%rbx)
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
    ; }
    ```
  ][
    ```asm
    00000000000d0800 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>:
    ; perf_case::zero_init::uninit_it::h1f640c62abb13c34():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:36
    ; pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
       d0800: 53                           	pushq	%rbx
       d0801: 48 89 fb                     	movq	%rdi, %rbx
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
    ;         update_data::assign(&mut self.state, data);
       d0804: ff 15 86 34 20 00            	callq	*0x203486(%rip)         # 0x2d3c90 <_GLOBAL_OFFSET_TABLE_+0x40>
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
    ; }
       d080a: 48 89 d8                     	movq	%rbx, %rax
       d080d: 5b                           	popq	%rbx
       d080e: c3                           	retq
       d080f: 00 48 8b                     	addb	%cl, -0x75(%rax)
    ```
  ]

  与之前 bin 的观察是一致的，init 版本多了很多的拷贝指令。
]

#focus-slide[
  == 内联 `update_data::assign`
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  由于跨 crate 进行调用，即使是 `update_data::assign` 这样非常小的函数都没有被内联。

  为其标注 inline 那么它会生成什么样的汇编？

  #raw("cargo b -r --features inline", lang: "bash")

  #grid(columns: 2, gutter: 5em)[
    #set text(.75em)
    #raw("rust-objdump -SldC target/release/zero_init", lang: "bash")

    ```asm
    0000000000014a60 <perf_case::zero_init::uninit_it::h550f1e90574c123c>:
    ; perf_case::zero_init::uninit_it::h550f1e90574c123c():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
    ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
       14a60: 48 89 f8                      movq    %rdi, %rax
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
    ;     unsafe { copy_nonoverlapping(src, dst, count) }
       14a63: 48 8b 8e c0 00 00 00          movq    0xc0(%rsi), %rcx
       14a6a: 48 89 8f c0 00 00 00          movq    %rcx, 0xc0(%rdi)
       14a71: c5 fc 10 86 a0 00 00 00       vmovups 0xa0(%rsi), %ymm0
       14a79: c5 fc 11 87 a0 00 00 00       vmovups %ymm0, 0xa0(%rdi)
       14a81: c5 fc 10 86 80 00 00 00       vmovups 0x80(%rsi), %ymm0
       14a89: c5 fc 11 87 80 00 00 00       vmovups %ymm0, 0x80(%rdi)
       14a91: c5 fc 10 06                   vmovups (%rsi), %ymm0
       14a95: c5 fc 10 4e 20                vmovups 0x20(%rsi), %ymm1
       14a9a: c5 fc 10 56 40                vmovups 0x40(%rsi), %ymm2
       14a9f: c5 fc 10 5e 60                vmovups 0x60(%rsi), %ymm3
       14aa4: c5 fc 11 5f 60                vmovups %ymm3, 0x60(%rdi)
       14aa9: c5 fc 11 57 40                vmovups %ymm2, 0x40(%rdi)
       14aae: c5 fc 11 4f 20                vmovups %ymm1, 0x20(%rdi)
       14ab3: c5 fc 11 07                   vmovups %ymm0, (%rdi)
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
    ; }
       14ab7: c5 f8 77                      vzeroupper
       14aba: c3                            retq
       14abb: 00 00                         addb    %al, (%rax)
       14abd: 00 00                         addb    %al, (%rax)
       14abf: 00 55 48                      addb    %dl, 0x48(%rbp)
    ```
  ][
    #set text(.75em)
    #raw("rust-objdump -SldC target/release/zero_uninit", lang: "bash")

    ```asm
    0000000000014a60 <perf_case::zero_init::uninit_it::h550f1e90574c123c>:
    ; perf_case::zero_init::uninit_it::h550f1e90574c123c():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
    ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
       14a60: 48 89 f8                      movq    %rdi, %rax
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
    ;     unsafe { copy_nonoverlapping(src, dst, count) }
       14a63: 48 8b 8e c0 00 00 00          movq    0xc0(%rsi), %rcx
       14a6a: 48 89 8f c0 00 00 00          movq    %rcx, 0xc0(%rdi)
       14a71: c5 fc 10 86 a0 00 00 00       vmovups 0xa0(%rsi), %ymm0
       14a79: c5 fc 11 87 a0 00 00 00       vmovups %ymm0, 0xa0(%rdi)
       14a81: c5 fc 10 86 80 00 00 00       vmovups 0x80(%rsi), %ymm0
       14a89: c5 fc 11 87 80 00 00 00       vmovups %ymm0, 0x80(%rdi)
       14a91: c5 fc 10 06                   vmovups (%rsi), %ymm0
       14a95: c5 fc 10 4e 20                vmovups 0x20(%rsi), %ymm1
       14a9a: c5 fc 10 56 40                vmovups 0x40(%rsi), %ymm2
       14a9f: c5 fc 10 5e 60                vmovups 0x60(%rsi), %ymm3
       14aa4: c5 fc 11 5f 60                vmovups %ymm3, 0x60(%rdi)
       14aa9: c5 fc 11 57 40                vmovups %ymm2, 0x40(%rdi)
       14aae: c5 fc 11 4f 20                vmovups %ymm1, 0x20(%rdi)
       14ab3: c5 fc 11 07                   vmovups %ymm0, (%rdi)
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
    ; }
       14ab7: c5 f8 77                      vzeroupper
       14aba: c3                            retq
       14abb: 00 00                         addb    %al, (%rax)
       14abd: 00 00                         addb    %al, (%rax)
       14abf: 00 55 48                      addb    %dl, 0x48(%rbp)
    ```
  ]

  这次它们生成了相同的汇编。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  再看一眼基准测试：

  #raw("taskset --cpu-list 0 cargo bench --features inline -- Zero", lang: "bash")

  #image("assets/zero-inline-violin.svg")
  #set text(.75em)

  #show: columns.with(2, gutter: 3em)

  #raw("rust-objdump -SldC target/release/deps/zero_init-f2a5664f52a235d3", lang: "bash")
  ```asm
  0000000000014a60 <perf_case::zero_init::uninit_it::h550f1e90574c123c>:
  ; perf_case::zero_init::uninit_it::h550f1e90574c123c():
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
  ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
     14a60: 48 89 f8                      movq    %rdi, %rax
  ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
  ;     unsafe { copy_nonoverlapping(src, dst, count) }
     14a63: 48 8b 8e c0 00 00 00          movq    0xc0(%rsi), %rcx
     14a6a: 48 89 8f c0 00 00 00          movq    %rcx, 0xc0(%rdi)
     14a71: c5 fc 10 86 a0 00 00 00       vmovups 0xa0(%rsi), %ymm0
     14a79: c5 fc 11 87 a0 00 00 00       vmovups %ymm0, 0xa0(%rdi)
     14a81: c5 fc 10 86 80 00 00 00       vmovups 0x80(%rsi), %ymm0
     14a89: c5 fc 11 87 80 00 00 00       vmovups %ymm0, 0x80(%rdi)
     14a91: c5 fc 10 06                   vmovups (%rsi), %ymm0
     14a95: c5 fc 10 4e 20                vmovups 0x20(%rsi), %ymm1
     14a9a: c5 fc 10 56 40                vmovups 0x40(%rsi), %ymm2
     14a9f: c5 fc 10 5e 60                vmovups 0x60(%rsi), %ymm3
     14aa4: c5 fc 11 5f 60                vmovups %ymm3, 0x60(%rdi)
     14aa9: c5 fc 11 57 40                vmovups %ymm2, 0x40(%rdi)
     14aae: c5 fc 11 4f 20                vmovups %ymm1, 0x20(%rdi)
     14ab3: c5 fc 11 07                   vmovups %ymm0, (%rdi)
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
  ; }
     14ab7: c5 f8 77                      vzeroupper
     14aba: c3                            retq
     14abb: 00 00                         addb    %al, (%rax)
     14abd: 00 00                         addb    %al, (%rax)
     14abf: 00 55 48                      addb    %dl, 0x48(%rbp)
  ```

  与 bin 是同样的汇编。#footnote[基准测试和 bin 有可能生成不同的汇编]
]

#focus-slide[
  == 开启 lto (`Default` trait)
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  如果 crate 作者并没有为一些函数标注 inline，使用者也不想 patch 依赖，lto 在一定程度上可以做到和 inline 相同的效果。

  ```toml
  # ./Cargo.toml
  [profile.release-lto]
  inherits = "release"
  lto = true
  ```

  #raw("cargo b --profile release-lto", lang: "bash")

  #grid(columns: 2, gutter: 5em)[

    #raw("rust-objdump -SldCRT target/release-lto/zero_init", lang: "bash")

    ```asm
    000000000004df28 R_X86_64_GLOB_DAT        memcpy
    ……
    000000000000e780 <perf_case::zero_init::init_it::hd1189aaa6ae199a2>:
    ; perf_case::zero_init::init_it::hd1189aaa6ae199a2():
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
    ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
        e780: 50                            pushq   %rax
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
    ;     unsafe { copy_nonoverlapping(src, dst, count) }
        e781: ba c8 00 00 00                movl    $0xc8, %edx
        e786: ff 15 9c f7 03 00             callq   *0x3f79c(%rip)          # 0x4df28 <_GLOBAL_OFFSET_TABLE_+0x118>
    ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
    ; }
        e78c: 58                            popq    %rax
        e78d: c3                            retq
    ```
  ][

    #raw("rust-objdump -SldCRT target/release-lto/zero_uninit", lang: "bash")

    ```asm
    000000000004df28 R_X86_64_GLOB_DAT        memcpy
    ……
    000000000000e780 <perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b>:
    ; perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b():
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
    ;     unsafe { copy_nonoverlapping(src, dst, count) }
        e780: ba c8 00 00 00                movl    $0xc8, %edx
        e785: ff 25 9d f7 03 00             jmpq    *0x3f79d(%rip)          # 0x4df28 <_GLOBAL_OFFSET_TABLE_+0x118>
    ```
  ]


  lto 中使用 `memcpy`，并没有像 inline 那样全都使用寄存器操作。
]

#slide(composer: (1fr, auto))[
  #set text(.50em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  看下 lto 的基准测试。

  #raw("taskset --cpu-list 0 cargo bench --profile release-lto -- Zero", lang: "bash")

  #image("assets/zero-lto-violin.svg", height: 20%)

  #raw("rust-objdump -SldCRT target/release-lto/deps/zero_init-8306fa691d6b3444", lang: "bash")

  ```asm
  0000000000280fc0 R_X86_64_GLOB_DAT        memcpy
  ……
  000000000013b2c0 <perf_case::zero_init::init_it::hd1189aaa6ae199a2>:
  ; perf_case::zero_init::init_it::hd1189aaa6ae199a2():
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
  ; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
    13b2c0: 50                            pushq   %rax
  ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
  ;     unsafe { copy_nonoverlapping(src, dst, count) }
    13b2c1: ba c8 00 00 00                movl    $0xc8, %edx
    13b2c6: ff 15 f4 5c 14 00             callq   *0x145cf4(%rip)         # 0x280fc0 <_GLOBAL_OFFSET_TABLE_+0x438>
  ; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
  ; }
    13b2cc: 58                            popq    %rax
    13b2cd: c3                            retq
    13b2ce: 66 90                         nop

  000000000013b2d0 <perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b>:
  ; perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b():
  ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
  ;     unsafe { copy_nonoverlapping(src, dst, count) }
    13b2d0: ba c8 00 00 00                movl    $0xc8, %edx
    13b2d5: ff 25 e5 5c 14 00             jmpq    *0x145ce5(%rip)         # 0x280fc0 <_GLOBAL_OFFSET_TABLE_+0x438>
    13b2db: 0f 1f 44 00 00                nopl    (%rax,%rax)
  ```

  与 bin 汇编一致。
]

#focus-slide[
  = 由于 move 造成了 memcpy
]

#slide(composer: (1fr, auto))[
  #set text(.80em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  下面代码中 `chain` 方法有什么问题？

  #show: columns.with(2, gutter: 3em)
  ```rust
  // ./crates/perf-case/src/chain.rs
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

      pub fn update(&mut self) {
          update_data::update(&mut self.state);
      }
      pub fn finalize(self) -> u64 {
          self.state.into_iter().sum()
      }
  }

  #[inline(never)]
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
  ```

  其中 `update_data::update` 是来自外部 crate 的函数。

  ```rust
  // ./crates/update-data/src/lib.rs
  #[cfg_attr(feature = "inline", inline(always))]
  pub fn update(state: &mut [u64]) {
      for ele in state {
          *ele = ele.pow(2);
      }
  }
  ```
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  构建一个 bin chain_move

  ```rust
  // ./crates/perf-case/src/bin/chain_move.rs
  use perf_case::chain::{ChainState, many_chain};

  fn main() {
      let state = ChainState::new();
      let a = many_chain(state);
      dbg!(a);
  }
  ```

  #raw("rust-objdump -SldCRT target/release/chain_move", lang: "bash")

  #set text(.80em)
  #show: columns.with(2, gutter: 3em)

  ```asm
  0000000000054c10 R_X86_64_GLOB_DAT        memcpy
  ……
  0000000000007a20 <perf_case::chain::many_chain::h12412cd1860633f8>:
  ; perf_case::chain::many_chain::h12412cd1860633f8():
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:48
  ; pub fn many_chain(arg: ChainState) -> u64 {
  ……
      7a60: 4c 8b 3d a9 d1 04 00         	movq	0x4d1a9(%rip), %r15     # 0x54c10 <_GLOBAL_OFFSET_TABLE_+0x458>
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7a72: 41 ff d7                     	callq	*%r15
  ……
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7a93: 41 ff d7                     	callq	*%r15
  ……
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7ab1: 41 ff d7                     	callq	*%r15
  ……
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7ad2: 41 ff d7                     	callq	*%r15
  ……
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7af0: 41 ff d7                     	callq	*%r15
  ……
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
  ……
      7b11: 41 ff d7                     	callq	*%r15
  ……
  ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
  ;         IntoIter { inner }
      7b1f: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
  ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
      7b24: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
      7b29: 48 89 de                     	movq	%rbx, %rsi
      7b2c: 41 ff d7                     	callq	*%r15
      7b2f: 66 0f ef c0                  	pxor	%xmm0, %xmm0
  ……
  ```

  共有七次 `memcpy` 调用
]

#slide(composer: (1fr, auto))[
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  把 `chain` 方法改为引用会发生什么？

  ```rust
  impl ChainState {
      pub fn chain_refm(&mut self) -> &mut Self {
          self.update();
          self
      }
  }

  #[inline(never)]
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
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  构建一个 bin chain_refm

  #grid(columns: (30%, 70%), gutter: 3em)[
    ```rust
    // ./crates/perf-case/src/bin/chain_refm.rs
    use perf_case::chain::{ChainState, many_chain_refm};

    fn main() {
        let state = ChainState::new();
        let a = many_chain_refm(state);
        dbg!(a);
    }
    ```

    #raw("rust-objdump -SldCRT target/release/chain_move", lang: "bash")
  ][
    #set text(.90em)

    ```asm
    0000000000054c18 R_X86_64_GLOB_DAT        memcpy
    ……
    0000000000007a20 <perf_case::chain::many_chain_refm::ha6a6629d685d517b>:
    ; perf_case::chain::many_chain_refm::ha6a6629d685d517b():
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:60
    ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:32
    ;         update_data::update(&mut self.state);
        7a48: 4c 8d 35 f1 00 00 00          leaq    0xf1(%rip), %r14        # 0x7b40 <update_data::update::h5964edf586a94d9a>
        7a4f: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a54: 41 ff d6                      callq   *%r14
        7a57: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a5c: 48 89 df                      movq    %rbx, %rdi
        7a5f: 41 ff d6                      callq   *%r14
        7a62: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a67: 48 89 df                      movq    %rbx, %rdi
        7a6a: 41 ff d6                      callq   *%r14
        7a6d: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a72: 48 89 df                      movq    %rbx, %rdi
        7a75: 41 ff d6                      callq   *%r14
        7a78: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a7d: 48 89 df                      movq    %rbx, %rdi
        7a80: 41 ff d6                      callq   *%r14
        7a83: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a88: 48 89 df                      movq    %rbx, %rdi
        7a8b: 41 ff d6                      callq   *%r14
        7a8e: be 00 00 01 00                movl    $0x10000, %esi          # imm = 0x10000
        7a93: 48 89 df                      movq    %rbx, %rdi
        7a96: 41 ff d6                      callq   *%r14
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
        7a99: 48 8d 7c 24 18                leaq    0x18(%rsp), %rdi
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:68
    ;     arg.finalize()
        7a9e: ba 00 00 08 00                movl    $0x80000, %edx          # imm = 0x80000
        7aa3: 48 89 de                      movq    %rbx, %rsi
        7aa6: ff 15 6c d1 04 00             callq   *0x4d16c(%rip)          # 0x54c18 <_GLOBAL_OFFSET_TABLE_+0x460>
    ……
    ```

    只有在 `finalize` 方法中有一次 `memcpy`。
  ]
]

#slide(composer: (1fr, auto))[
  看一下 `many_chain`, `many_chain_refm` 两者性能差距

  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  ```rust
  // ./crates/perf-case/benches/chain_call.rs
  fn bench_chain_call(c: &mut Criterion) {
      let arg = ChainState::new();
      let mut group = c.benchmark_group("Chain call");

      group.bench_function("move", |b| b.iter(|| black_box(many_chain(arg))));
      group.bench_function("refm", |b| b.iter(|| black_box(many_chain_refm(arg))));
  }
  ```

  #raw("taskset --cpu-list 0 cargo bench -- Chain", lang: "bash")

  #image("./assets/chain-violin.svg")

  #table(
    align: left,
    columns: (100pt, 100pt),
    stroke: none,
    table.header([Chain call], [Time/µs]),
    table.hline(),
    [move], [168.47],
    [refm], [96.450],
    table.hline(),
  )

]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  查看对应的 benchmark 的汇编代码

  #raw("rust-objdump -SldCRT target/release/deps/chain_call-78137e0dde144467", lang: "bash")

  #grid(columns: 2, gutter: 5em)[
    #set text(.60em)

    ```asm
    00000000002c7eb8 R_X86_64_GLOB_DAT        memcpy
    ……
    0000000000055a80 <perf_case::chain::many_chain::h12412cd1860633f8>:
    ; perf_case::chain::many_chain::h12412cd1860633f8():
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:48
    ; pub fn many_chain(arg: ChainState) -> u64 {
    ……
       55ac0: 4c 8b 3d f1 23 27 00         	movq	0x2723f1(%rip), %r15    # 0x2c7eb8 <_GLOBAL_OFFSET_TABLE_+0x1c98>
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
       55ac7: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       55acc: 4c 89 f7                     	movq	%r14, %rdi
       55acf: 48 89 de                     	movq	%rbx, %rsi
       55ad2: 41 ff d7                     	callq	*%r15
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55af3: 41 ff d7                     	callq	*%r15
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55b11: 41 ff d7                     	callq	*%r15
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55b32: 41 ff d7                     	callq	*%r15
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55b50: 41 ff d7                     	callq	*%r15
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55b71: 41 ff d7                     	callq	*%r15
    ……
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       55b7f: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
    ……
       55b8c: 41 ff d7                     	callq	*%r15
    ……
    ```
  ][
    #set text(.60em)

    ```asm
    00000000002c7eb8 R_X86_64_GLOB_DAT        memcpy
    ……
    0000000000055c20 <perf_case::chain::many_chain_refm::ha6a6629d685d517b>:
    ; perf_case::chain::many_chain_refm::ha6a6629d685d517b():
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:60
    ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:32
    ;         update_data::update(&mut self.state);
       55c48: 4c 8d 35 f1 00 00 00         	leaq	0xf1(%rip), %r14        # 0x55d40 <update_data::update::h5964edf586a94d9a>
       55c4f: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c54: 41 ff d6                     	callq	*%r14
       55c57: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c5c: 48 89 df                     	movq	%rbx, %rdi
       55c5f: 41 ff d6                     	callq	*%r14
       55c62: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c67: 48 89 df                     	movq	%rbx, %rdi
       55c6a: 41 ff d6                     	callq	*%r14
       55c6d: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c72: 48 89 df                     	movq	%rbx, %rdi
       55c75: 41 ff d6                     	callq	*%r14
       55c78: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c7d: 48 89 df                     	movq	%rbx, %rdi
       55c80: 41 ff d6                     	callq	*%r14
       55c83: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c88: 48 89 df                     	movq	%rbx, %rdi
       55c8b: 41 ff d6                     	callq	*%r14
       55c8e: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
       55c93: 48 89 df                     	movq	%rbx, %rdi
       55c96: 41 ff d6                     	callq	*%r14
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       55c99: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:68
    ;     arg.finalize()
       55c9e: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       55ca3: 48 89 de                     	movq	%rbx, %rsi
       55ca6: ff 15 0c 22 27 00            	callq	*0x27220c(%rip)         # 0x2c7eb8 <_GLOBAL_OFFSET_TABLE_+0x1c98>
       55cac: 66 0f ef c0                  	pxor	%xmm0, %xmm0
       55cb0: b8 10 00 00 00               	movl	$0x10, %eax
       55cb5: 66 0f ef c9                  	pxor	%xmm1, %xmm1
       55cb9: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
    ;         crate::intrinsics::read_via_copy(src)
    ```
  ]

  `chain` 版本七次 `memcpy`， `chain_refm` 版本一次 `memcpy`
]

#focus-slide[
  == 内联 `update_data::update`
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #raw("cargo b -r --features inline", lang: "bash")

  #raw("rust-objdump -SldCRT target/release/chain_move", lang: "bash")

  #set text(.60em)

  #grid(columns: 2, gutter: 5em)[
    ```asm
    0000000000056140 R_X86_64_GLOB_DAT        memcpy
    ……
    00000000000146c0 <perf_case::chain::many_chain::hba1e7798f4d6f899>:
    ; perf_case::chain::many_chain::hba1e7798f4d6f899():
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:48
    ; pub fn many_chain(arg: ChainState) -> u64 {
    ……
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
       1478d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14792: c5 f8 77                     	vzeroupper
       14795: ff 15 a5 19 04 00            	callq	*0x419a5(%rip)          # 0x56140 <_GLOBAL_OFFSET_TABLE_+0x7e0>
       1479b: b8 0c 00 00 00               	movl	$0xc, %eax
    ……
    ; /path/perf-case-study/crates/update-data/src/lib.rs:5
    ;         *ele = ele.pow(2);
       14b30: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
       14b36: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
       14b3c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
       14b42: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
       14b48: 48 83 c0 10                  	addq	$0x10, %rax
       14b4c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
       14b52: 0f 85 68 ff ff ff            	jne	0x14ac0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x400>
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       14b58: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
       14b60: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
       14b65: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14b6a: c5 f8 77                     	vzeroupper
       14b6d: ff 15 cd 15 04 00            	callq	*0x415cd(%rip)          # 0x56140 <_GLOBAL_OFFSET_TABLE_+0x7e0>
       14b73: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
       14b77: b8 3e 00 00 00               	movl	$0x3e, %eax
       14b7c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
       14b80: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
       14b84: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
       14b88: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    ……
    ```

    只在第一次 `chain` 和 `finalize` 中的 `IntoIter` 发生了 `memcpy`。
  ][
    #raw("rust-objdump -SldCRT target/release/chain_refm", lang: "bash")

    ```asm
    0000000000056120 R_X86_64_GLOB_DAT        memcpy
    ……
    00000000000146c0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5>:
    ; perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5():
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:61
    ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
       146c0: 48 89 fe                     	movq	%rdi, %rsi
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1823
    ;         intrinsics::volatile_load(src)
       146c3: 48 8d 05 f0 24 04 00         	leaq	0x424f0(%rip), %rax     # 0x56bba <__rust_no_alloc_shim_is_unstable>
       146ca: 0f b6 08                     	movzbl	(%rax), %ecx
       146cd: b9 0c 00 00 00               	movl	$0xc, %ecx
       146d2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)
    ; /path/perf-case-study/crates/update-data/src/lib.rs:5
    ;         *ele = ele.pow(2);
       146e0: c5 fe 6f 44 ce a0            	vmovdqu	-0x60(%rsi,%rcx,8), %ymm0
    ……
       14b30: 0f 85 6a ff ff ff            	jne	0x14aa0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x3e0>
       14b36: 49 89 e3                     	movq	%rsp, %r11
       14b39: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
       14b40: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
       14b47: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
       14b4f: 4c 39 dc                     	cmpq	%r11, %rsp
       14b52: 75 ec                        	jne	0x14b40 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x480>
       14b54: 48 83 ec 18                  	subq	$0x18, %rsp
    ; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       14b58: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
    ; /path/perf-case-study/crates/perf-case/src/chain.rs:69
    ;     arg.finalize()
       14b5d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14b62: c5 f8 77                     	vzeroupper
       14b65: ff 15 b5 15 04 00            	callq	*0x415b5(%rip)          # 0x56120 <_GLOBAL_OFFSET_TABLE_+0x7e0>
       14b6b: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
       14b6f: b8 3e 00 00 00               	movl	$0x3e, %eax
       14b74: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
       14b78: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
       14b7c: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
    ```

    引用版本在 `finalize` 产生 `memcpy`。
  ]
]


#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  再次进行基准测试。

  #raw("taskset --cpu-list 0 cargo bench --features inline -- Chain", lang: "bash")

  #image("./assets/chain-inline-violin.svg")
  #table(
    align: left,
    columns: (100pt, 100pt),
    stroke: none,
    table.header([Chain call], [Time/µs]),
    table.hline(),
    [move], [104.00],
    [refm], [84.685],
    table.hline(),
  )
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)
  #show: columns.with(2, gutter: 3em)

  ```asm
  00000000002d62b8 R_X86_64_GLOB_DAT        memcpy
  ……
  00000000000d0690 <perf_case::chain::many_chain::hba1e7798f4d6f899>:
  ; perf_case::chain::many_chain::hba1e7798f4d6f899():
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:48
  ; pub fn many_chain(arg: ChainState) -> u64 {
  ……
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
     d075d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
     d0762: c5 f8 77                     	vzeroupper
     d0765: ff 15 4d 5b 20 00            	callq	*0x205b4d(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
     d076b: b8 0c 00 00 00               	movl	$0xc, %eax
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
  ;         *ele = ele.pow(2);
  ……
  ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
  ;         IntoIter { inner }
     d0b28: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
     d0b30: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
     d0b35: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
     d0b3a: c5 f8 77                     	vzeroupper
     d0b3d: ff 15 75 57 20 00            	callq	*0x205775(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
     d0b43: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
  ……

  00000000000d0c30 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5>:
  ; perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5():
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:60
  ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
     d0c30: 48 89 fe                     	movq	%rdi, %rsi
     d0c33: b8 0c 00 00 00               	movl	$0xc, %eax
     d0c38: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
  ;         *ele = ele.pow(2);
  ……
  ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
  ;         IntoIter { inner }
     d10b8: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:68
  ;     arg.finalize()
     d10bd: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
     d10c2: c5 f8 77                     	vzeroupper
     d10c5: ff 15 ed 51 20 00            	callq	*0x2051ed(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
     d10cb: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
  ……
  ```

  与之前的 bin 一样，`chain` 方法会在第一次调用时产生 `memcpy`，`chain_refm` 只有 `finalize` 时产生 `memcpy`。
]

#focus-slide[
  == 开启 lto

  lto 可以减少 `memcpy` 吗？
]

#slide(composer: (1fr, auto))[
  #set text(.50em)

  #raw("cargo b --profile release-lto", lang: "bash")
  #raw("rust-objdump -SldCRT target/release-lto/deps/chain_call-dde5b9f3179567d0", lang: "bash")

  #grid(columns: 2, gutter: 5em)[

    ```asm
    000000000004dd88 R_X86_64_GLOB_DAT        memcpy
    ……
    00000000000146a0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef>:
    ; perf_case::chain::many_chain::he5fd9c9a3b3a10ef():
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:48
    ; pub fn many_chain(arg: ChainState) -> u64 {
       146a0: 48 89 fe                     	movq	%rdi, %rsi
       146a3: b8 0c 00 00 00               	movl	$0xc, %eax
       146a8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
    ;         *ele = ele.pow(2);
    ……
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
       1476d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14772: c5 f8 77                     	vzeroupper
       14775: ff 15 0d 96 03 00            	callq	*0x3960d(%rip)          # 0x4dd88 <_GLOBAL_OFFSET_TABLE_+0x190>
       1477b: b8 0c 00 00 00               	movl	$0xc, %eax
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
    ;         *ele = ele.pow(2);
    ……
    ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       14b38: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
       14b40: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:23
    ;         self
       14b45: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14b4a: c5 f8 77                     	vzeroupper
       14b4d: ff 15 35 92 03 00            	callq	*0x39235(%rip)          # 0x4dd88 <_GLOBAL_OFFSET_TABLE_+0x190>
       14b53: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
       14b57: b8 3e 00 00 00               	movl	$0x3e, %eax
       14b5c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
       14b60: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
       14b64: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
       14b68: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    ```
  ][
    ```asm
    000000000004dd58 R_X86_64_GLOB_DAT        memcpy
    ……
    00000000000146a0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0>:
    ; perf_case::chain::many_chain_refm::h3506ece423a3a7c0():
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:60
    ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
       146a0: 48 89 fe                     	movq	%rdi, %rsi
       146a3: b8 0c 00 00 00               	movl	$0xc, %eax
       146a8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
    ;         *ele = ele.pow(2);
    ……
       14b22: 75 ec                        	jne	0x14b10 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x470>
       14b24: 48 83 ec 18                  	subq	$0x18, %rsp
    ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
    ;         IntoIter { inner }
       14b28: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
    ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:68
    ;     arg.finalize()
       14b2d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
       14b32: c5 f8 77                     	vzeroupper
       14b35: ff 15 1d 92 03 00            	callq	*0x3921d(%rip)          # 0x4dd58 <_GLOBAL_OFFSET_TABLE_+0x190>
       14b3b: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
       14b3f: b8 3e 00 00 00               	movl	$0x3e, %eax
       14b44: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
       14b48: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
       14b4c: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
    ```
  ]

  与 inline 的效果一致，只剩下开头和结尾有 `memcpy`。
]

#slide(composer: (1fr, auto))[
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  看看基准测试的情况。

  #raw("taskset --cpu-list 0 cargo bench --profile release-lto -- Chain", lang: "bash")

  #image("./assets/chain-lto-violin.svg")

  #table(
    align: left,
    columns: (100pt, 100pt),
    stroke: none,
    table.header([Chain call], [Time/µs]),
    table.hline(),
    [move], [111.45],
    [refm], [89.377],
    table.hline(),
  )
]

#slide(composer: (1fr, auto))[
  #set text(.50em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  检查一下对应的汇编

  ```rust
  rust-objdump -SldC target/release/deps/chain_call-dde5b9f3179567d0
  ```

  #show: columns.with(2, gutter: 3em)
  ```asm
  000000000028a840 R_X86_64_GLOB_DAT        memcpy
  ……
  00000000001beca0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef>:
  ; perf_case::chain::many_chain::he5fd9c9a3b3a10ef():
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:49
  ; pub fn many_chain(arg: ChainState) -> u64 {
    1beca0: 48 89 fe                     	movq	%rdi, %rsi
    1beca3: b8 0c 00 00 00               	movl	$0xc, %eax
    1beca8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
    ……
    1bed62: 75 ec                        	jne	0x1bed50 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0xb0>
    1bed64: 48 83 ec 18                  	subq	$0x18, %rsp
    1bed68: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
    1bed6d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    1bed72: c5 f8 77                     	vzeroupper
    1bed75: ff 15 c5 ba 0c 00            	callq	*0xcbac5(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
    1bed7b: b8 0c 00 00 00               	movl	$0xc, %eax
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
  ;         *ele = ele.pow(2);
  ……
    1bf12c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
    1bf132: 0f 85 68 ff ff ff            	jne	0x1bf0a0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x400>
  ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
  ;         IntoIter { inner }
    1bf138: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
    1bf140: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:23
  ;         self
    1bf145: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    1bf14a: c5 f8 77                     	vzeroupper
    1bf14d: ff 15 ed b6 0c 00            	callq	*0xcb6ed(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
    1bf153: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
    1bf157: b8 3e 00 00 00               	movl	$0x3e, %eax
  ……

  00000000001bf240 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0>:
  ; perf_case::chain::many_chain_refm::h3506ece423a3a7c0():
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:61
  ; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    1bf240: 48 89 fe                     	movq	%rdi, %rsi
    1bf243: b8 0c 00 00 00               	movl	$0xc, %eax
    1bf248: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/update-data/src/lib.rs:5
  ;         *ele = ele.pow(2);
  ……
    1bf6c2: 75 ec                        	jne	0x1bf6b0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x470>
    1bf6c4: 48 83 ec 18                  	subq	$0x18, %rsp
  ; /home/saying/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
  ;         IntoIter { inner }
    1bf6c8: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
  ; /home/saying/optimatist/rust-conf/perf-case-study/crates/perf-case/src/chain.rs:69
  ;     arg.finalize()
    1bf6cd: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    1bf6d2: c5 f8 77                     	vzeroupper
    1bf6d5: ff 15 65 b1 0c 00            	callq	*0xcb165(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
    1bf6db: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
    1bf6df: b8 3e 00 00 00               	movl	$0x3e, %eax
  ……
  ```

  `many_chain` 两次，`many_chain_refm` 一次。
]

#focus-slide[
  = Black box
]

#slide(composer: (1fr, auto))[
  在基准测试中很容易因为编译器的优化将想要测试的函数被优化掉，很可能零秒就将基准测试运行完毕。

  Rust 在 1.66 版本中稳定了 `std::hint::black_box` 阻止编译器的一些优化。

  在 #link("https://blog.rust-lang.org/2022/12/15/Rust-1.66.0/#core-hint-black-box")[Rust 1.66 blog] 中的例子

  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 5em)[
    ```rust
    // ./crates/perf-case/src/black_box.rs
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
    cargo asm --this-workspace --att --rust -p perf-case --lib bench_push 0
    ```
  ][
    ```asm
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
  ]

  通过 `black_box` 避免将 `push` 优化，在循环中增加了指令 #raw("movq %rbx, 8(%rsp)", lang: "asm") 在每次循环中都向栈中写入，在一次 benchmark 中，
  由于在循环中调用 `black_box` 导致观察到的性能和实际收益不符，针对这种情况需要使用一些其他的手段来避免编译器的优化。
]

#slide(composer: (1fr, auto))[
  这个例子在循环中放入一条内联汇编，并将 `push_cap_1` 操作后的 `Vec` 使用 `black_box` 包裹，
  同样可以避免将循环中的 `push` 优化，而且在循环中没有额外的向栈写入。

  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 5em)[
    ```rust
    // ./crates/perf-case/src/black_box.rs
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
    cargo asm --this-workspace --att --rust -p perf-case --lib bench_push_1
    ```
  ][
    ```asm
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
  ]
]

#slide(composer: (1fr, auto))[
  在一些建议中需要为函数的输入和输出使用 `std::hint::black_box` 包裹，尝试在这个例子中将输入的 `Vec` 包裹。

  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 5em)[
    ```rust
    // ./crates/perf-case/src/black_box.rs
    pub fn bench_push_wrapper() -> Duration {
        let mut v = std::hint::black_box(Vec::with_capacity(4));
        let now = Instant::now();
        push_cap(&mut v);
        now.elapsed()
    }
    ```

    查看汇编

    ```bash
    cargo asm --this-workspace --att --rust -p perf-case --lib bench_push_wrapper
    ```
  ][
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
  ]

  这使得在循环中不知道 `Vec` 的容量，每次迭代就多了 `grow_one` 的调用，但是这里只是想对 `push` 进行测试。

  #line(length: 100%)

  在 `black_box` 相关 issue 中有#link("https://github.com/rust-lang/rust/issues/64102#issuecomment-674175929")[另一个版本的实现]。

  #grid(columns: 2, gutter: 5em)[
    ```rust
    // ./crates/perf-case/src/black_box.rs
    pub fn better_black_box(mut int_x: u64) -> u64 {
        unsafe { asm!("/* {x} */", x = inout(reg) int_x, options(nostack)) };
        int_x
    }
    ```

    临时添加 `#[inline(never)]` 来观察

    ```bash
    cargo asm --this-workspace --att --rust -p perf-case --lib better_black_box
    ```
  ][
    ```asm
    perf_case::black_box::better_black_box:
                    // src/black_box.rs:50
                    pub fn better_black_box(mut int_x: u64) -> u64 {
            .cfi_startproc
            movq %rdi, %rax
                    // src/black_box.rs:51
                    unsafe { asm!("/* {x} */", x = inout(reg) int_x, options(nostack)) };
            #APP
            # rax
            #NO_APP
                    // src/black_box.rs:53
                    }
            retq
    ```
  ]

  这个版本去除了向栈写入，只是向寄存器进行写入。

  不知道为何官方采用了向栈写入的实现，`black_box` 并不是在所有情况都适用，如果发现不能满足自己的用例，可以尝试内联汇编达到想要的效果。
]

// #slide(composer: (1fr, auto))[
//   #set text(.65em)
//   #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)
//   #let file  = read("Cargo.toml")
//   // #codly-range(2,end: 3)
//   #raw(file,block: true)
// ]
