DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000054c10 R_X86_64_GLOB_DAT        memcpy

0000000000007a30 <perf_case::chain::many_chain::h12412cd1860633f8>:
; perf_case::chain::many_chain::h12412cd1860633f8():
; /path/perf-case-study/crates/perf-case/src/chain.rs:48
; pub fn many_chain(arg: ChainState) -> u64 {
    7a30: 41 57                        	pushq	%r15
    7a32: 41 56                        	pushq	%r14
    7a34: 41 54                        	pushq	%r12
    7a36: 53                           	pushq	%rbx
    7a37: 49 89 e3                     	movq	%rsp, %r11
    7a3a: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
    7a41: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
    7a48: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
    7a50: 4c 39 dc                     	cmpq	%r11, %rsp
    7a53: 75 ec                        	jne	0x7a41 <perf_case::chain::many_chain::h12412cd1860633f8+0x11>
    7a55: 48 83 ec 18                  	subq	$0x18, %rsp
    7a59: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7a5c: 4c 8d 25 6d 01 00 00         	leaq	0x16d(%rip), %r12       # 0x7bd0 <update_data::update::h5964edf586a94d9a>
    7a63: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a68: 41 ff d4                     	callq	*%r12
    7a6b: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
    7a70: 4c 8b 3d 99 d1 04 00         	movq	0x4d199(%rip), %r15     # 0x54c10 <_GLOBAL_OFFSET_TABLE_+0x458>
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7a77: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7a7c: 4c 89 f7                     	movq	%r14, %rdi
    7a7f: 48 89 de                     	movq	%rbx, %rsi
    7a82: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7a85: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a8a: 4c 89 f7                     	movq	%r14, %rdi
    7a8d: 41 ff d4                     	callq	*%r12
    7a90: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7a98: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7a9d: 48 89 df                     	movq	%rbx, %rdi
    7aa0: 4c 89 f6                     	movq	%r14, %rsi
    7aa3: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7aa6: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7aab: 48 89 df                     	movq	%rbx, %rdi
    7aae: 41 ff d4                     	callq	*%r12
    7ab1: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7ab6: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7abb: 4c 89 f7                     	movq	%r14, %rdi
    7abe: 48 89 de                     	movq	%rbx, %rsi
    7ac1: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7ac4: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7ac9: 4c 89 f7                     	movq	%r14, %rdi
    7acc: 41 ff d4                     	callq	*%r12
    7acf: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7ad7: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7adc: 48 89 df                     	movq	%rbx, %rdi
    7adf: 4c 89 f6                     	movq	%r14, %rsi
    7ae2: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7ae5: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7aea: 48 89 df                     	movq	%rbx, %rdi
    7aed: 41 ff d4                     	callq	*%r12
    7af0: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7af5: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7afa: 4c 89 f7                     	movq	%r14, %rdi
    7afd: 48 89 de                     	movq	%rbx, %rsi
    7b00: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7b03: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7b08: 4c 89 f7                     	movq	%r14, %rdi
    7b0b: 41 ff d4                     	callq	*%r12
    7b0e: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7b16: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7b1b: 48 89 df                     	movq	%rbx, %rdi
    7b1e: 4c 89 f6                     	movq	%r14, %rsi
    7b21: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7b24: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7b29: 48 89 df                     	movq	%rbx, %rdi
    7b2c: 41 ff d4                     	callq	*%r12
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
    7b2f: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
    7b34: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7b39: 48 89 de                     	movq	%rbx, %rsi
    7b3c: 41 ff d7                     	callq	*%r15
    7b3f: 66 0f ef c0                  	pxor	%xmm0, %xmm0
    7b43: b8 10 00 00 00               	movl	$0x10, %eax
    7b48: 66 0f ef c9                  	pxor	%xmm1, %xmm1
    7b4c: 0f 1f 40 00                  	nopl	(%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b50: f3 0f 6f 54 c4 98            	movdqu	-0x68(%rsp,%rax,8), %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b56: 66 0f d4 d0                  	paddq	%xmm0, %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b5a: f3 0f 6f 44 c4 a8            	movdqu	-0x58(%rsp,%rax,8), %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b60: 66 0f d4 c1                  	paddq	%xmm1, %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b64: f3 0f 6f 4c c4 b8            	movdqu	-0x48(%rsp,%rax,8), %xmm1
    7b6a: f3 0f 6f 5c c4 c8            	movdqu	-0x38(%rsp,%rax,8), %xmm3
    7b70: f3 0f 6f 64 c4 d8            	movdqu	-0x28(%rsp,%rax,8), %xmm4
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b76: 66 0f d4 e1                  	paddq	%xmm1, %xmm4
    7b7a: 66 0f d4 e2                  	paddq	%xmm2, %xmm4
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b7e: f3 0f 6f 54 c4 e8            	movdqu	-0x18(%rsp,%rax,8), %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b84: 66 0f d4 d3                  	paddq	%xmm3, %xmm2
    7b88: 66 0f d4 d0                  	paddq	%xmm0, %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b8c: f3 0f 6f 44 c4 f8            	movdqu	-0x8(%rsp,%rax,8), %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b92: 66 0f d4 c4                  	paddq	%xmm4, %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b96: f3 0f 6f 4c c4 08            	movdqu	0x8(%rsp,%rax,8), %xmm1
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b9c: 66 0f d4 ca                  	paddq	%xmm2, %xmm1
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
    7ba0: 48 83 c0 10                  	addq	$0x10, %rax
    7ba4: 48 3d 10 00 01 00            	cmpq	$0x10010, %rax          # imm = 0x10010
    7baa: 75 a4                        	jne	0x7b50 <perf_case::chain::many_chain::h12412cd1860633f8+0x120>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
    7bac: 66 0f d4 c8                  	paddq	%xmm0, %xmm1
    7bb0: 66 0f 70 c1 ee               	pshufd	$0xee, %xmm1, %xmm0     # xmm0 = xmm1[2,3,2,3]
    7bb5: 66 0f d4 c1                  	paddq	%xmm1, %xmm0
    7bb9: 66 48 0f 7e c0               	movq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:57
; }
    7bbe: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
    7bc5: 5b                           	popq	%rbx
    7bc6: 41 5c                        	popq	%r12
    7bc8: 41 5e                        	popq	%r14
    7bca: 41 5f                        	popq	%r15
    7bcc: c3                           	retq
    7bcd: 0f 1f 00                     	nopl	(%rax)

0000000000007bd0 <update_data::update::h5964edf586a94d9a>:
; update_data::update::h5964edf586a94d9a():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
    7bd0: 48 85 f6                     	testq	%rsi, %rsi
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
    7bd3: 74 20                        	je	0x7bf5 <update_data::update::h5964edf586a94d9a+0x25>
    7bd5: 48 c1 e6 03                  	shlq	$0x3, %rsi
    7bd9: 31 c0                        	xorl	%eax, %eax
    7bdb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
    7be0: 48 8b 0c 07                  	movq	(%rdi,%rax), %rcx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
    7be4: 48 0f af c9                  	imulq	%rcx, %rcx
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
    7be8: 48 89 0c 07                  	movq	%rcx, (%rdi,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
    7bec: 48 83 c0 08                  	addq	$0x8, %rax
    7bf0: 48 39 c6                     	cmpq	%rax, %rsi
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
    7bf3: 75 eb                        	jne	0x7be0 <update_data::update::h5964edf586a94d9a+0x10>
; /path/perf-case-study/crates/update-data/src/lib.rs:7
; }
    7bf5: c3                           	retq
    7bf6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
