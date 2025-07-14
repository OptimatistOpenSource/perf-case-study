0000000000015b20 <perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b>:
; perf_case::zero_init::uninit_it::h1ab68d0cbbeaf12b():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
   15b20: 48 8b 86 c0 00 00 00         	movq	0xc0(%rsi), %rax
   15b27: 48 89 87 c0 00 00 00         	movq	%rax, 0xc0(%rdi)
   15b2e: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
   15b36: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
   15b3e: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
   15b46: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
   15b4e: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
   15b52: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
   15b57: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
   15b5c: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
   15b61: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
   15b66: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
   15b6b: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
   15b70: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
; }
   15b74: c5 f8 77                     	vzeroupper
   15b77: c3                           	retq
		...
