#import "@preview/touying:0.6.1": *
#import "@preview/zebraw:0.5.5": *
#import "@preview/relescope:0.0.2": pick
#show: zebraw-init.with(
  highlight-color: blue.lighten(70%),
  background-color: luma(240),
  comment-flag: ">>",
)
#import themes.metropolis: *

#import "@preview/numbly:0.1.0": numbly

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-info(
    title: [Rust 性能优化],
    subtitle: [rust 程序中发现的优化点。#footnote[代码链接：https://github.com/OptimatistOpenSource/perf-case-study]],
    author: [Authors],
    date: datetime.today(),
    institution: [Optimatist],
    logo: image("assets/optimatist.png", height: 1000%),
  ),
)

#set quote(block: true)
#show quote.where(block: true): block.with(width: 100%, fill: luma(235), outset: .5em, radius: .2em)
#show footnote.entry: set text(size: 8pt)
#show link: underline
#set text(15pt)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide(logo: image("assets/optimatist.png", height: 10%))

#focus-slide[
  = `Default` trait 对性能造成的影响

  使用 Default trait 进行初始化使得代码易于维护，但是有些情况会影响性能。
]

#let cg_toml_path = "./Cargo.toml"
#let cg_toml = raw(read(cg_toml_path), lang: "toml", block: true)

#let config_toml_path = "./.cargo/config.toml"
#let config_toml = raw(read(config_toml_path), lang: "toml", block: true)

#let hp = "path: "
#let zero_src_path = "./crates/perf-case/src/zero_init.rs"
#let zero_src = raw(read(zero_src_path), lang: "rust", block: true)
#let update_data_src_path = "./crates/update-data/src/lib.rs"
#let update_data_src = raw(read(update_data_src_path), lang: "rust", block: true)

#slide(composer: (1fr, auto))[
  #set text(.95em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #let zero_struct = pick(zero_src.text, "ZeroInit", lang: zero_src.lang)
  #zebraw(
    header: hp + zero_src_path,
    raw(zero_struct.src, lang: zero_src.lang, block: true),
    numbering-offset: zero_struct.first_line - 1,
  )
  #zebraw(zero_src, line-range: (8, 9))
  #zebraw(zero_src, line-range: (22, 26))

  其中 `assign` 是来自另一个 update-data crate 的函数

  #let assign = pick(update_data_src.text, "assign", lang: update_data_src.lang)
  #zebraw(
    header: hp + update_data_src_path,
    raw(assign.src, lang: update_data_src.lang, block: true),
    numbering-offset: assign.first_line - 1,
  )

  这样一段代码，使用 `Default` 为 `ZeroInit` 全零初始化会有什么问题？
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 3em)[
    构建一个 bin 来观察它的汇编。

    // 其中指定目标 cpu 为 native，测试机器 cpu 为 Intel i5-14400F 有 avx2 指令集。

    #zebraw(
      header: hp + config_toml_path,
      line-range: (1, 3),
      raw(
        config_toml.text,
        lang: config_toml.lang,
        block: true,
      ),
      highlight-lines: (
        (2, [指定目标 cpu 为 native，测试机器 cpu 为 Intel i5-14400F 有 avx2 指令集。]),
      ),
    )

    接下来使用 #raw("cargo b -r", lang: "bash") 构建。

    #let zero_init = pick(zero_src.text, "init_it", lang: zero_src.lang)
    #zebraw(
      header: hp + zero_src_path,
      raw(zero_init.src, lang: zero_src.lang, block: true),
      numbering-offset: zero_init.first_line - 1,
    )

    #let zero_init_bin_path = "./crates/perf-case/src/bin/zero_init.rs"
    #let zero_init_bin = raw(read(zero_init_bin_path), lang: "rust", block: true)
    #zebraw(zero_init_bin, header: hp + zero_init_bin_path, highlight-lines: (
      (5, [这里将 `init_it` 的返回值传递给 `dbg!` 宏防止其被优化。]) // zebraw bug 不能显示注释。
    ))

    这里将 `init_it` 的返回值传递给 `dbg!` 宏防止其被优化。

    使用 cargo-binutils 工具包的 rust-objdump 来观察 Rust 生成的汇编。
    #raw("rust-objdump -SldCRT target/release/zero_init", lang: "bash") 命令查看其汇编。
  ][
    #set text(.70em)

    #let zero_init_bin = raw(read("./assets/bin-asm/zero_init.s"), lang: "asm", block: true)
    #zebraw(zero_init_bin, line-range: (1, 47), highlight-lines: (14, [清零操作]))

    - 其中有一条 #raw("vxorps  %xmm0, %xmm0, %xmm0", lang: "asm") 清零操作。
    - 它把 `ymm0` 清零后向栈上写入，在调用 `assign` 之后又又将栈的数据复制回 `ymm*` 寄存器。
  ]
]

#slide(composer: (1fr, auto))[
  #set text(.50em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #zebraw(header: hp + zero_src_path, zero_src, line-range: (8, 15), highlight-lines: range(10, 15))

  对于上个例子，我们知道清零操作是完全没有必要的，它立即就会被覆盖掉。
  这里可以添加另一个方法来避免清零操作。
  #footnote[
    这个 `MaybeUninit` 使用方式在rust里面被定义为 UB，Rust 使用未初始化数据非常困难。
  ]

  #let uninit_path = "./crates/perf-case/src/bin/zero_uninit.rs"
  #let struct_zero_init = raw(read(uninit_path), lang: "rust", block: true)
  #zebraw(struct_zero_init, header: hp + uninit_path)

  使用 #raw("rust-objdump -SldCRT target/release/zero_uninit", lang: "bash") 命令查看其汇编。

  #let struct_zero_init = raw(read("./assets/bin-asm/zero_uninit.s"), lang: "asm", block: true)
  #zebraw(struct_zero_init, line-range: (1, 19))

  没有了之前的数据清零和拷贝。
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  使用 `criterion` 框架进行基准测试。

  #grid(columns: (auto, 64%), gutter: 2em)[
    #let bench_src = raw(read("crates/perf-case/benches/zero_init.rs"), lang: "rust", block: true)
    #let bench = pick(bench_src.text, "bench_zero_init", lang: bench_src.lang)
    #zebraw(raw(bench.src, lang: bench_src.lang, block: true), numbering-offset: bench.first_line - 1)
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

    相差了 2.6 倍！
    #footnote[
      数据会有波动，尤其这种很小的测试
    ]
  ]
]

#focus-slide[
  == 内联 `update_data::assign`

  由于跨 crate 进行调用，即使是 `update_data::assign` 这样非常小的函数都没有被内联。

  为其标注 inline 能够提升多少？
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #raw("cargo b -r --features inline", lang: "bash")

  #grid(columns: 2, gutter: 5em)[
    #set text(.75em)
    #raw("rust-objdump -SldCRT target/release/zero_init", lang: "bash")

    #let zero_init_bin = raw(read("./assets/bin-asm-inline/zero_init.s"), lang: "asm", block: true)
    #zebraw(zero_init_bin, line-range: (1, 4), highlight-lines: 3)
    #zebraw(zero_init_bin, line-range: (21, 26), highlight-lines: 25)
    #zebraw(zero_init_bin, line-range: (54, 82))

  ][
    #set text(.75em)
    #raw("rust-objdump -SldCRT target/release/zero_uninit", lang: "bash")

    #let zero_init_bin = raw(read("assets/bin-asm-inline/zero_uninit.s"), lang: "asm", block: true)
    #zebraw(zero_init_bin, line-range: (1, 4), highlight-lines: 3)
    #zebraw(zero_init_bin, line-range: (21, 26), highlight-lines: 25)
    #zebraw(zero_init_bin, line-range: (54, 82))
  ]

  - 在 main 中调用的 `init_it`, `uninit_it` 两个函数都指向了相同的地址，此时编译器认为这两个函数是一样的。
  - 两个函数从函数调用变成了寄存器的操作。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  观察内联后的基准测试。

  #raw("taskset --cpu-list 0 cargo bench --features inline -- Zero", lang: "bash")

  #image("assets/zero-inline-violin.svg")
  基准测试的结果也符合之前对汇编的观察，两者之间没有差距。
]

#focus-slide[
  == 开启 LTO (`Default` trait)

  开启 LTO 可以让 LLVM 对程序全局分析来生成更优化的代码，对于这个情况 LTO 能做到什么程度？
  // 如果 crate 作者并没有为一些函数标注 inline，使用者也不想 patch 依赖，lto 在一定程度上可以做到和 inline 相同的效果。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  增添一个 profile 方便进行切换

  #zebraw(cg_toml, line-range: (19, 22), header: hp + cg_toml_path)

  #raw("cargo b --profile release-lto", lang: "bash")

  #set text(.96em)
  #grid(columns: 2, gutter: 5em)[
    #raw("rust-objdump -SldCRTRT target/release-lto/zero_init", lang: "bash")
    #let chain_lib_src = raw(read("./assets/bin-asm-lto/zero_init.s"), lang: "rust", block: true)
    #zebraw(chain_lib_src)
  ][
    #raw("rust-objdump -SldCRTRT target/release-lto/zero_uninit", lang: "bash")
    #let chain_lib_src = raw(read("./assets/bin-asm-lto/zero_uninit.s"), lang: "rust", block: true)
    #zebraw(chain_lib_src)
  ]

  LTO 下两者的汇编也是相同的，都是对寄存器进行操作。
]

#slide(composer: (1fr, auto))[
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  进行 LTO 下的基准测试。

  #raw("taskset --cpu-list 0 cargo bench --profile release-lto -- Zero", lang: "bash")

  #image("assets/zero-lto-violin.svg")

  两者没有差距，符合之前汇编的观察。
]

#focus-slide[
  // = 由于 move 造成了 memcpy
  = 链式调用的性能陷阱

  在 Rust 中经常可以看到 Builder 模式进行配置或资源的初始化。

  那么 build 过程中是让构造器被 move 还是传递它的可变引用呢？

  使构造器 move 和传递引用性能有差距吗？
]

#let chain_lib_path = "crates/perf-case/src/chain.rs"
#let chain_lib_src = raw(read(chain_lib_path), lang: "rust", block: true)
#slide(composer: (1fr, auto))[
  下面代码中 `chain` 方法有什么问题？

  #set text(.80em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #show: columns.with(2, gutter: 3em)

  #zebraw(header: hp + chain_lib_path, chain_lib_src, line-range: (1, 2))
  #zebraw(chain_lib_src, line-range: (5, 9))
  #zebraw(chain_lib_src, line-range: (16, 33))
  #let chain = pick(chain_lib_src.text, "many_chain", lang: chain_lib_src.lang)
  #zebraw(raw(chain.src, lang: zero_src.lang, block: true), numbering-offset: chain.first_line - 1)

  其中 `update_data::update` 是来自外部 crate 的函数。

  #let update = pick(update_data_src.text, "update", lang: update_data_src.lang)
  #zebraw(
    header: hp + update_data_src_path,
    raw(update.src, lang: update_data_src.lang, block: true),
    numbering-offset: chain.first_line - 1,
  )
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  // #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  构建一个 bin chain_move

  #let chain_src_path = "crates/perf-case/src/bin/chain_move.rs"
  #let chain_src = raw(read("crates/perf-case/src/bin/chain_move.rs"), lang: "rust", block: true)
  #zebraw(chain_src, line-range: (1, 8), header: hp + chain_src_path)

  #raw("rust-objdump -SldCRTRT target/release/chain_move", lang: "bash")

  #set text(.90em)
  #show: columns.with(2, gutter: 3em)

  #let path = "./assets/bin-asm/chain_move.s"
  #let chain_asm = raw(read(path), lang: "asm", block: true)
  #zebraw(chain_asm, line-range: (1, 4), header: [#path])
  #zebraw(chain_asm, line-range: (5, 9))
  #zebraw(chain_asm, line-range: (21, 28), highlight-lines: 27)
  #zebraw(chain_asm, line-range: (33, 34))
  #zebraw(chain_asm, line-range: (45, 46))
  #zebraw(chain_asm, line-range: (57, 58))
  #zebraw(chain_asm, line-range: (69, 70))
  #zebraw(chain_asm, line-range: (81, 82))
  #zebraw(chain_asm, line-range: (93, 94))
  #zebraw(chain_asm, line-range: (99, 107), highlight-lines: 106)

  共有七次 `memcpy` 调用。
]

#slide(composer: (1fr, auto))[
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  把 `chain` 方法改为引用会发生什么？新增一个 `chain_refm` 方法。

  #zebraw(chain_lib_src, line-range: (16, 17), header: hp + chain_lib_path)
  #zebraw(chain_lib_src, line-range: (34, 39), highlight-lines: 34)
  #let zero_struct = pick(chain_lib_src.text, "many_chain_refm", lang: chain_lib_src.lang)
  #zebraw(
    raw(zero_struct.src, lang: zero_src.lang, block: true),
    numbering-offset: zero_struct.first_line - 1,
  )
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: (30%, 70%), gutter: 3em)[
    构建一个 bin chain_refm 来观察生成的汇编。

    #let chain_bin_path = "./crates/perf-case/src/bin/chain_refm.rs"
    #let chain_bin_src = raw(read(chain_bin_path), lang: "rust", block: true)
    #zebraw(chain_bin_src, header: hp + chain_bin_path)

    接下来查看生成的汇编。
    ```bash
    cargo b -r
    rust-objdump -SldCRTRT target/release/chain_refm
    ```
  ][
    #set text(.90em)

    #let chain_bin_asm = raw(read("./assets/bin-asm/chain_refm.s"), lang: "rust", block: true)
    #zebraw(chain_bin_asm, line-range: (1, 4))
    #zebraw(chain_bin_asm, line-range: (5, 7))
    #zebraw(chain_bin_asm, line-range: (19, 51), highlight-lines: 49)

    只有在 `finalize` 方法中有一次 `memcpy`。
  ]
]

#slide(composer: (1fr, auto))[
  观察 `many_chain`, `many_chain_refm` 两者性能差距

  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #let chain_bench_path = "crates/perf-case/benches/chain_call.rs"
  #let chain_bench_src = raw(read(chain_bench_path), lang: "rust", block: true)
  #let bench_fn = pick(chain_bench_src.text, "bench_chain_call", lang: chain_bench_src.lang)
  #zebraw(
    raw(bench_fn.src, lang: chain_bench_src.lang, block: true),
    header: hp + chain_bench_path,
    numbering-offset: bench_fn.first_line - 1,
  )

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

  由于那些无用的 memcpy 两者相差 74.64%。
]

#focus-slide[
  == 内联 `update_data::update`

  在上个例子中使用 inline 取得了很好的效果，对于这个例子也可以做到那样的效果吗？
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  通过 inline feature 使函数开启内联。

  #raw("cargo b -r --features inline", lang: "bash")

  #set align(center)
  - 内联后原本调用 `update` 的地方变为了寄存器操作。

  #set text(.60em)

  #grid(columns: 2, gutter: 5em)[
    #raw("rust-objdump -SldCRTRT target/release/chain_move", lang: "bash")

    #let chain_bin_asm = raw(read("./assets/bin-asm-inline/chain_move.s"), lang: "asm", block: true)
    #zebraw(raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true), line-range: (1, 4))
    #zebraw(raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true), line-range: (5, 30))
    #zebraw(raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true), line-range: (57, 62), highlight-lines: 61)
    #zebraw(
      raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true),
      line-range: (295, 302),
      highlight-lines: 301,
    )

    - 内联后只在第一次 `chain` 和 `finalize` 中的 `IntoIter` 发生了 `memcpy`。
  ][
    #raw("rust-objdump -SldCRTRT target/release/chain_refm", lang: "bash")

    #let chain_bin_asm = raw(read("./assets/bin-asm-inline/chain_refm.s"), lang: "asm", block: true)
    #zebraw(raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true), line-range: (1, 4))
    #zebraw(raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true), line-range: (5, 30))
    #zebraw(
      raw(chain_bin_asm.text, lang: chain_bin_asm.lang, block: true),
      line-range: (293, 298),
      highlight-lines: 297,
    )

    - 引用版本依然只在 `finalize` 产生 `memcpy`。
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

  现在两者的缩小到 22.8%。
]

#focus-slide[
  == 链式调用 LTO

  接下来为链式调用开启 LTO。
]

#slide(composer: (1fr, auto))[
  #set text(.60em)

  与手动内联一样，`chain` 的 `memcpy` 只剩下了两次。

  #raw("cargo b --profile release-lto", lang: "bash")

  #grid(columns: 2, gutter: 3em)[
    #raw("rust-objdump -SldCRTRT target/release-lto/chain_move", lang: "bash")

    #let chain_move_asm = raw(read("./assets/bin-asm-lto/chain_move.s"), lang: "asm", block: true)

    #zebraw(raw(chain_move_asm.text, lang: chain_move_asm.lang, block: true), line-range: (1, 4))
    #zebraw(raw(chain_move_asm.text, lang: chain_move_asm.lang, block: true), line-range: (5, 9))
    #zebraw(
      raw(chain_move_asm.text, lang: chain_move_asm.lang, block: true),
      line-range: (57, 63),
      highlight-lines: 61,
    )
    #zebraw(
      raw(chain_move_asm.text, lang: chain_move_asm.lang, block: true),
      line-range: (295, 305),
      highlight-lines: 303,
    )

    - 与内联的效果一致，只剩下两次 `memcpy`。
  ][
    #raw("rust-objdump -SldCRTRT target/release-lto/chain_refm", lang: "bash")

    #let chain_refm_asm = raw(read("./assets/bin-asm-lto/chain_refm.s"), lang: "asm", block: true)

    #zebraw(raw(chain_refm_asm.text, lang: chain_refm_asm.lang, block: true), line-range: (1, 4))
    #zebraw(raw(chain_refm_asm.text, lang: chain_refm_asm.lang, block: true), line-range: (5, 9))
    #zebraw(
      raw(chain_refm_asm.text, lang: chain_refm_asm.lang, block: true),
      line-range: (290, 300),
      highlight-lines: 297,
    )

  ]
]

#slide(composer: (1fr, auto))[
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  查看基准测试的情况。

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

  两者差距为 24.7%, 依然是 memcpy 造成的差距。
]

#focus-slide[
  = 探索 Rust 编译的过程

  这其中发生了什么使 `chain` 要多出那么多操作，内联是在什么地方做出的决策。

  接下来探索 Rust 的编译过程。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  在 rust 关于 MIR#footnote[https://blog.rust-lang.org/2016/04/19/MIR/] 的 blog 中讲述了 rust 的编译过程，中间会涉及到几层 ir。

  #image("assets/mir-flow.svg", height: 70%)

  在 MIR 和 LLVM-IR 两个过程中都有优化，可以通过添加 flags 来观察 chain 和 chain_refm 生成的 ir 有什么区别。
  ```bash
  export RUSTFLAGS="--emit=asm,llvm-ir,mir"
  ```

  这样就可以在项目的 "target/release-lto/deps/" 目录中找到对应的 MIR, LLVM-IR。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  == 对比 `chain`, `chain_refm` 之间的差别。

  ```bash
  export RUSTFLAGS="--emit=asm,llvm-ir,mir"
  cargo clean && cargo b -r
  ```

  从 target/release/deps/perf_case-\*.mir 观察 `many_chain`, `many_chain_refm` 两者的区别。

  #grid(columns: (30%, 30%, 40%), gutter: 2em)[
    #set text(.50em)

    #let many_chain = raw(read("assets/chain-ir/many_chain.mir"), lang: "rust", block: true)
    #zebraw(
      many_chain,
      wrap: false,
      highlight-lines: range(12, 19) + (25, 29, 33, 37, 41, 45, 49),
    )
  ][
    #set text(.50em)

    #let many_chain = raw(read("assets/chain-ir/many_chain_refm.mir"), lang: "rust", block: true)
    #zebraw(
      many_chain,
      wrap: false,
      highlight-lines: range(14, 16) + (20, 39, 40, 45),
    )

  ][
    在 rustc nightly 的文档中

    #quote(attribution: [Rustc doc])[
      StorageLive statements cause memory to be allocated for the local while StorageDead statements cause the memory to be freed. In other words, StorageLive/StorageDead act like the heap operations allocate/deallocate, but for stack-allocated local variables.
      #footnote[https://doc.rust-lang.org/beta/nightly-rustc/rustc_middle/mir/enum.StatementKind.html#variant.StorageLive]
    ]

    讲解了这对操作用于管理栈上的内存，`StorageLive` 会导致为局部变量分配内存，`StorageDead` 会导致释放内存。

    `chain` 方法引入了很多的 `Storage{Live,Dead}` 来标记局部变量的存活范围，而 `chain_refm` 没有引入这么多 `Storeage` 语句。
  ]

]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  继续查看 LLVM-IR 的区别。

  #set text(.50em)
  #grid(columns: 2, gutter: 5em)[
    #let chain_ll = raw(read("assets/chain-ir/many_chain.ll"), lang: "llvm", block: true)
    #zebraw(
      chain_ll,
      line-range: (1, 55),
      highlight-lines: (24, 30, 37, 44, 51, 58, 66),
      wrap: false,
    )
  ][
    #let chain_refm_ll = raw(read("assets/chain-ir/many_chain_refm.ll"), lang: "llvm", block: true)
    #zebraw(
      chain_refm_ll,
      line-range: (1, 42),
      wrap: false,
      highlight-lines: 37,
    )
  ]

  在 LLVM-IR 中，`chain` 版本多出了很多 `memcpy` 的调用。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  == 是否内联 IR 的区别

  可以使用这些命令来对比是否内联之间的差别。

  #let diff_path = "./diff.sh"
  #let diff_src = raw(read(diff_path), lang: "bash", block: true)
  #zebraw(
    diff_src,
    header: hp + diff_path,
  )

  可以看到这些是有区别的。

  #zebraw(
    ```txt
    >>>> zero_init.ll <<<<
    >>>> zero_uninit.ll <<<<
    >>>> chain_move.ll <<<<
    >>>> chain_refm.ll <<<<
    >>>> perf_case.mir <<<<
    >>>> perf_case.ll <<<<
    >>>> update_data.ll <<<<
    ```,
    highlight-lines: (
      (3, [ ignore ]),
      (4, [ ignore ]),
    ),
  )

  其中 `chain_move.ll`, `chain_refm.ll` 只是 mangled name 有所区别，直接忽略。
]

#slide(composer: (1fr, auto))[
  #set text(.60em)
  在 perf_case.mir 中 `chain` 调用相关的没有区别，区别在 `zero_init`。

  #grid(columns: 2, gutter: 5em)[
    #let perf_case_mir_path = "./assets/ir/perf_case-4d1606e80e2ae2b1.mir"
    #let perf_src = raw(read(perf_case_mir_path), lang: "rust", block: true)
    #zebraw(perf_src, header: hp + perf_case_mir_path, highlight-lines: 10)
  ][
    #let perf_case_mir_path = "./assets/ir-inline/perf_case-c7991b3e889a396b.mir"
    #let perf_src = raw(read(perf_case_mir_path), lang: "rust", block: true)
    #zebraw(perf_src, header: hp + perf_case_mir_path)
  ]

  #set align(center)
  - 未内联版本需要进行函数调用。
  - 内联后在 mir 中就将 assign 内联了。
]

#let perf_case_ll_path = "./assets/ir/perf_case-4d1606e80e2ae2b1.ll"
#let perf_case_ll_src = raw(read(perf_case_ll_path), lang: "llvm", block: true)
#let perf_case_inline_ll = "./assets/ir-inline/perf_case-c7991b3e889a396b.ll"
#let perf_case_inline_ll_src = raw(read(perf_case_inline_ll), lang: "llvm", block: true)

#slide(composer: (1fr, auto))[
  #set text(.49em)
  继续查看 zero_init 相关内容。

  #grid(columns: 2, gutter: 5em)[
    #zebraw(perf_case_ll_src, header: hp + perf_case_ll_path, line-range: (279, 310), highlight-lines: (291, 307))
  ][
    #zebraw(perf_case_inline_ll_src, header: hp + perf_case_inline_ll, line-range: (13, 15), highlight-lines: 14)
    #zebraw(perf_case_inline_ll_src, header: hp + perf_case_inline_ll, line-range: (450, 470))
  ]

  #set align(center)

  - 未 内联 的版本中需要 `call assign` 进行函数调用。
  - LLVM-IR 中 内联 后 `uninit_it`, `init_it` 是相同的。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)

  在 update_data.ll 中没内联的版本包含了 `update`, `assign` 函数的函数体，而启用内联的版本不包含函数体。

  #grid(columns: 2, gutter: 5em)[
    #let update_data_p = "./assets/ir/update_data-dd265cc984d859ac.ll"
    #let update_src = raw(read(update_data_p), lang: "llvm", block: true)
    #zebraw(update_src, header: hp + update_data_p, line-range: (1, 10))
    #zebraw(update_src, line-range: (63, 70))
  ][
    #let update_data_p = "./assets/ir-inline/update_data-a73865ec3b061462.ll"
    #let update_src = raw(read(update_data_p), lang: "llvm", block: true)
    #zebraw(
      update_src,
      header: hp + update_data_p,
    )
  ]
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  在 perf_case.ll 中没内联的版本直接调用 `update_data::update`，而启用内联的版本包含函数体。

  #set text(.65em)
  #grid(columns: 2, gutter: 5em)[
    #zebraw(perf_case_ll_src, wrap: false, header: hp + perf_case_ll_path, line-range: (13, 16))
    #zebraw(perf_case_ll_src, wrap: false, line-range: (34, 37), highlight-lines: 36)
    #zebraw(perf_case_ll_src, wrap: false, line-range: (40, 43), highlight-lines: 42)
    #zebraw(perf_case_ll_src, wrap: false, line-range: (47, 50), highlight-lines: 49)
    #zebraw(perf_case_ll_src, wrap: false, line-range: (54, 57), highlight-lines: 56)
    #zebraw(perf_case_ll_src, wrap: false, line-range: (61, 64), highlight-lines: 63)
  ][
    #zebraw(perf_case_inline_ll_src, wrap: false, header: hp + perf_case_inline_ll, line-range: (16, 20))
    #zebraw(perf_case_inline_ll_src, wrap: false, line-range: (38, 56))
    #zebraw(perf_case_inline_ll_src, wrap: false, line-range: (72, 86))
  ]

  #set align(center)

  - 内联后会有很多 vector.body 而不是进行函数调用。
]

#slide(composer: (1fr, auto))[
  #set text(.65em)
  == 是否 LTO IR 的区别

  可以使用这些命令来对比是否开启 LTO 之间的差别。

  #let diff_path = "./diff-lto.sh"
  #let diff_src = raw(read(diff_path), lang: "bash", block: true)
  #zebraw(
    diff_src,
    header: hp + diff_path,
  )

  可以看到这些是有区别的。

  #zebraw(
    ```txt
    >>>> zero_init.ll <<<<
    >>>> zero_uninit.ll <<<<
    >>>> chain_move.ll <<<<
    >>>> chain_refm.ll <<<<
    >>>> perf_case.ll <<<<
    >>>> update_data.ll <<<<
    ```,
  )

  - 其中只有 LLVM-IR 有区别，而 MIR 都是一致的。
  - perf_case.ll, update_data.ll 内容只在 mangled name 有区别。
]
#slide(composer: (1fr, auto))[
  #set text(.55em)
  #show raw.where(block: true): block.with(width: 100%, fill: luma(240), outset: .5em, radius: .2em)

  #grid(columns: 2, gutter: 5em)[
    #let ir_path = "./assets/ir-lto/chain_move-f3b6ac543d367251.ll"
    #let ir_src = raw(read(ir_path), lang: "llvm", block: true)
    #zebraw(ir_src, header: hp + ir_path, line-range: (1, 4))
    #zebraw(ir_src, line-range: (20, 22), highlight-lines: 21)

    #line(length: 100%)

    #let ir_path = "./assets/ir-lto/chain_move-f3b6ac543d367251.ll"
    #let ir_src = raw(read(ir_path), lang: "llvm", block: true)
    #zebraw(ir_src, wrap: false, header: hp + ir_path, line-range: (1, 4))
    #zebraw(ir_src, wrap: false, line-range: (20, 22), highlight-lines: 21)
  ][
    #let ir_path = "./assets/ir-lto/zero_init-b60ca615e0d7ce44.ll"
    #let ir_src = raw(read(ir_path), lang: "llvm", block: true)
    #zebraw(ir_src, wrap: false, header: hp + ir_path, line-range: (1, 4))
    #zebraw(ir_src, wrap: false, line-range: (34, 36), highlight-lines: 35)

    #line(length: 100%)

    #let ir_path = "./assets/ir-lto/zero_uninit-09e99eb298218491.ll"
    #let ir_src = raw(read(ir_path), lang: "llvm", block: true)
    #zebraw(ir_src, header: hp + ir_path, line-range: (1, 4))
    #zebraw(ir_src, wrap: false, line-range: (34, 36), highlight-lines: 35)
  ]

  - 在 LTO 下函数调用使用 `call fastcc` 允许进行更多的优化。

  #line(length: 100%)

  其中分别使用 `file` 和 `ar` 命令查看 deps 命令下的 rlib。

  ```bash
  file libperf_case-*.rlib
  # libperf_case-*.rlib: current ar archive
  ar x libperf_case-*.rlib
  file *.0.rcgu.o
  # origin
  # perf_case-*.0.rcgu.o: ELF 64-bit LSB relocatable, x86-64, version 1 (SYSV), with debug_info, not stripped

  # lto
  # perf_case-761a7486a7c932d6.perf_case.9ba7d5a2073366d6-cgu.0.rcgu.o: LLVM IR bitcode
  ```

  在 LTO 生成的 rlib 中包含的是 LLVM IR bitcode,默认生成的 rlib 包含的是 ELF，。
]

// #focus-slide[
#slide(composer: (1fr, auto))[
  == 关于编译过程

  - 标注 inline 后可以跨 crate 内联。
  - 在 MIR 和 LLVM-IR 两个阶段都可以做内联的决策。
  - 开启 LTO 会使用 `call fastcc`，以及生成 LLVM IR bitcode。
]

#focus-slide[
  = Black box

  在之前的基准测试代码中已经出现过 `black_box`, 接下来讲解何时使用它。
]

#slide(composer: (1fr, auto))[
  在基准测试中很容易因为编译器的优化将想要测试的函数被优化掉，很可能零秒就将基准测试运行完毕。

  Rust 在 1.66 版本中稳定了 `std::hint::black_box` 阻止编译器的一些优化。

  在 [Rust 1.66 blog]#footnote[https://blog.rust-lang.org/2022/12/15/Rust-1.66.0/#core-hint-black-box] 中的例子

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

  #set text(.60em)
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

  在 `black_box` 相关 issue 中有另一个版本的实现#footnote[https://github.com/rust-lang/rust/issues/64102#issuecomment-674175929]。

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
