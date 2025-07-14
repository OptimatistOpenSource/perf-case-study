00000000000cd6d0 <criterion::bencher::Bencher$LT$M$GT$::iter::h6134bc0bdcd76a6c>:
; criterion::bencher::Bencher$LT$M$GT$::iter::h6134bc0bdcd76a6c():
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:83
;     pub fn iter<O, R>(&mut self, mut routine: R)
   cd6d0: 55                           	pushq	%rbp
   cd6d1: 41 57                        	pushq	%r15
   cd6d3: 41 56                        	pushq	%r14
   cd6d5: 41 55                        	pushq	%r13
   cd6d7: 41 54                        	pushq	%r12
   cd6d9: 53                           	pushq	%rbx
   cd6da: 48 81 ec e8 00 00 00         	subq	$0xe8, %rsp
   cd6e1: 49 89 f6                     	movq	%rsi, %r14
   cd6e4: 48 89 fb                     	movq	%rdi, %rbx
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:87
;         self.iterated = true;
   cd6e7: c6 47 30 01                  	movb	$0x1, 0x30(%rdi)
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:88
;         let time_start = Instant::now();
   cd6eb: ff 15 1f 76 20 00            	callq	*0x20761f(%rip)         # 0x2d4d10 <_GLOBAL_OFFSET_TABLE_+0x1210>
   cd6f1: 48 89 44 24 10               	movq	%rax, 0x10(%rsp)
   cd6f6: 89 54 24 18                  	movl	%edx, 0x18(%rsp)
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:89
;         let start = self.measurement.start();
   cd6fa: 4c 8b 7b 20                  	movq	0x20(%rbx), %r15
   cd6fe: 4c 89 ff                     	movq	%r15, %rdi
   cd701: ff 15 a1 65 20 00            	callq	*0x2065a1(%rip)         # 0x2d3ca8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
   cd707: 48 89 44 24 08               	movq	%rax, 0x8(%rsp)
   cd70c: 89 54 24 04                  	movl	%edx, 0x4(%rsp)
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:90
;         for _ in 0..self.iters {
   cd710: 4c 8b 63 28                  	movq	0x28(%rbx), %r12
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/cmp.rs:1849
;             fn lt(&self, other: &Self) -> bool { *self <  *other }
   cd714: 4d 85 e4                     	testq	%r12, %r12
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/range.rs:764
;         if self.start < self.end {
   cd717: 74 24                        	je	0xcd73d <criterion::bencher::Bencher$LT$M$GT$::iter::h6134bc0bdcd76a6c+0x6d>
   cd719: 4c 8d 6c 24 20               	leaq	0x20(%rsp), %r13
   cd71e: 48 8d 2d 9b 2f 00 00         	leaq	0x2f9b(%rip), %rbp      # 0xd06c0 <perf_case::zero_init::uninit_it::h550f1e90574c123c>
   cd725: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
; /path/perf-case-study/crates/perf-case/benches/zero_init.rs:13
;             black_box(zero_init::init_it(datas));
   cd730: 4c 89 ef                     	movq	%r13, %rdi
   cd733: 4c 89 f6                     	movq	%r14, %rsi
   cd736: ff d5                        	callq	*%rbp
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/cmp.rs:1849
;             fn lt(&self, other: &Self) -> bool { *self <  *other }
   cd738: 49 ff cc                     	decq	%r12
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/range.rs:764
;         if self.start < self.end {
   cd73b: 75 f3                        	jne	0xcd730 <criterion::bencher::Bencher$LT$M$GT$::iter::h6134bc0bdcd76a6c+0x60>
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:93
;         self.value = self.measurement.end(start);
   cd73d: 4c 89 ff                     	movq	%r15, %rdi
   cd740: 48 8b 74 24 08               	movq	0x8(%rsp), %rsi
   cd745: 8b 54 24 04                  	movl	0x4(%rsp), %edx
   cd749: ff 15 61 65 20 00            	callq	*0x206561(%rip)         # 0x2d3cb0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
   cd74f: 48 89 03                     	movq	%rax, (%rbx)
   cd752: 89 53 08                     	movl	%edx, 0x8(%rbx)
   cd755: 48 8d 7c 24 10               	leaq	0x10(%rsp), %rdi
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:94
;         self.elapsed_time = time_start.elapsed();
   cd75a: ff 15 b8 75 20 00            	callq	*0x2075b8(%rip)         # 0x2d4d18 <_GLOBAL_OFFSET_TABLE_+0x1218>
   cd760: 48 89 43 10                  	movq	%rax, 0x10(%rbx)
   cd764: 89 53 18                     	movl	%edx, 0x18(%rbx)
; /$HOME/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/criterion-0.6.0/src/bencher.rs:95
;     }
   cd767: 48 81 c4 e8 00 00 00         	addq	$0xe8, %rsp
   cd76e: 5b                           	popq	%rbx
   cd76f: 41 5c                        	popq	%r12
   cd771: 41 5d                        	popq	%r13
   cd773: 41 5e                        	popq	%r14
   cd775: 41 5f                        	popq	%r15
   cd777: 5d                           	popq	%rbp
   cd778: c3                           	retq
   cd779: 00 00                        	addb	%al, (%rax)
   cd77b: 00 00                        	addb	%al, (%rax)
   cd77d: 00 00                        	addb	%al, (%rax)
   cd77f: 00 41 57                     	addb	%al, 0x57(%rcx)

00000000000d06c0 <perf_case::zero_init::uninit_it::h550f1e90574c123c>:
; perf_case::zero_init::uninit_it::h550f1e90574c123c():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
   d06c0: 48 89 f8                     	movq	%rdi, %rax
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
   d06c3: 48 8b 8e c0 00 00 00         	movq	0xc0(%rsi), %rcx
   d06ca: 48 89 8f c0 00 00 00         	movq	%rcx, 0xc0(%rdi)
   d06d1: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
   d06d9: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
   d06e1: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
   d06e9: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
   d06f1: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
   d06f5: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
   d06fa: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
   d06ff: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
   d0704: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
   d0709: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
   d070e: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
   d0713: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
; }
   d0717: c5 f8 77                     	vzeroupper
   d071a: c3                           	retq
   d071b: 00 00                        	addb	%al, (%rax)
   d071d: 00 00                        	addb	%al, (%rax)
   d071f: 00 41 57                     	addb	%al, 0x57(%rcx)
