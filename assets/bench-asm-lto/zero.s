000000000019b810 <perf_case::zero_init::init_it::hd1189aaa6ae199a2>:
; perf_case::zero_init::init_it::hd1189aaa6ae199a2():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
  19b810: 48 8b 86 c0 00 00 00         	movq	0xc0(%rsi), %rax
  19b817: 48 89 87 c0 00 00 00         	movq	%rax, 0xc0(%rdi)
  19b81e: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
  19b826: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
  19b82e: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
  19b836: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
  19b83e: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
  19b842: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
  19b847: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
  19b84c: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
  19b851: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
  19b856: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
  19b85b: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
  19b860: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
; }
  19b864: c5 f8 77                     	vzeroupper
  19b867: c3                           	retq
		...

000000000019b870 <perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b>:
; perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
  19b870: 48 8b 86 c0 00 00 00         	movq	0xc0(%rsi), %rax
  19b877: 48 89 87 c0 00 00 00         	movq	%rax, 0xc0(%rdi)
  19b87e: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
  19b886: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
  19b88e: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
  19b896: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
  19b89e: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
  19b8a2: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
  19b8a7: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
  19b8ac: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
  19b8b1: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
  19b8b6: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
  19b8bb: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
  19b8c0: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
; }
  19b8c4: c5 f8 77                     	vzeroupper
  19b8c7: c3                           	retq
		...

