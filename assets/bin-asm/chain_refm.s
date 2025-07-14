DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000054c18 R_X86_64_GLOB_DAT        memcpy

0000000000007a30 <perf_case::chain::many_chain_refm::ha6a6629d685d517b>:
; perf_case::chain::many_chain_refm::ha6a6629d685d517b():
; /path/perf-case-study/crates/perf-case/src/chain.rs:60
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    7a30: 41 56                        	pushq	%r14
    7a32: 53                           	pushq	%rbx
    7a33: 49 89 e3                     	movq	%rsp, %r11
    7a36: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
    7a3d: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
    7a44: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
    7a4c: 4c 39 dc                     	cmpq	%r11, %rsp
    7a4f: 75 ec                        	jne	0x7a3d <perf_case::chain::many_chain_refm::ha6a6629d685d517b+0xd>
    7a51: 48 83 ec 18                  	subq	$0x18, %rsp
    7a55: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
    7a58: 4c 8d 35 f1 00 00 00         	leaq	0xf1(%rip), %r14        # 0x7b50 <update_data::update::h5964edf586a94d9a>
    7a5f: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a64: 41 ff d6                     	callq	*%r14
    7a67: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a6c: 48 89 df                     	movq	%rbx, %rdi
    7a6f: 41 ff d6                     	callq	*%r14
    7a72: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a77: 48 89 df                     	movq	%rbx, %rdi
    7a7a: 41 ff d6                     	callq	*%r14
    7a7d: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a82: 48 89 df                     	movq	%rbx, %rdi
    7a85: 41 ff d6                     	callq	*%r14
    7a88: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a8d: 48 89 df                     	movq	%rbx, %rdi
    7a90: 41 ff d6                     	callq	*%r14
    7a93: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7a98: 48 89 df                     	movq	%rbx, %rdi
    7a9b: 41 ff d6                     	callq	*%r14
    7a9e: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
    7aa3: 48 89 df                     	movq	%rbx, %rdi
    7aa6: 41 ff d6                     	callq	*%r14
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
    7aa9: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:68
;     arg.finalize()
    7aae: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
    7ab3: 48 89 de                     	movq	%rbx, %rsi
    7ab6: ff 15 5c d1 04 00            	callq	*0x4d15c(%rip)          # 0x54c18 <_GLOBAL_OFFSET_TABLE_+0x460>
    7abc: 66 0f ef c0                  	pxor	%xmm0, %xmm0
    7ac0: b8 10 00 00 00               	movl	$0x10, %eax
    7ac5: 66 0f ef c9                  	pxor	%xmm1, %xmm1
    7ac9: 0f 1f 80 00 00 00 00         	nopl	(%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7ad0: f3 0f 6f 54 c4 98            	movdqu	-0x68(%rsp,%rax,8), %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7ad6: 66 0f d4 d0                  	paddq	%xmm0, %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7ada: f3 0f 6f 44 c4 a8            	movdqu	-0x58(%rsp,%rax,8), %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7ae0: 66 0f d4 c1                  	paddq	%xmm1, %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7ae4: f3 0f 6f 4c c4 b8            	movdqu	-0x48(%rsp,%rax,8), %xmm1
    7aea: f3 0f 6f 5c c4 c8            	movdqu	-0x38(%rsp,%rax,8), %xmm3
    7af0: f3 0f 6f 64 c4 d8            	movdqu	-0x28(%rsp,%rax,8), %xmm4
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7af6: 66 0f d4 e1                  	paddq	%xmm1, %xmm4
    7afa: 66 0f d4 e2                  	paddq	%xmm2, %xmm4
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7afe: f3 0f 6f 54 c4 e8            	movdqu	-0x18(%rsp,%rax,8), %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b04: 66 0f d4 d3                  	paddq	%xmm3, %xmm2
    7b08: 66 0f d4 d0                  	paddq	%xmm0, %xmm2
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b0c: f3 0f 6f 44 c4 f8            	movdqu	-0x8(%rsp,%rax,8), %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b12: 66 0f d4 c4                  	paddq	%xmm4, %xmm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs:1455
;         crate::intrinsics::read_via_copy(src)
    7b16: f3 0f 6f 4c c4 08            	movdqu	0x8(%rsp,%rax,8), %xmm1
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
    7b1c: 66 0f d4 ca                  	paddq	%xmm2, %xmm1
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
    7b20: 48 83 c0 10                  	addq	$0x10, %rax
    7b24: 48 3d 10 00 01 00            	cmpq	$0x10010, %rax          # imm = 0x10010
    7b2a: 75 a4                        	jne	0x7ad0 <perf_case::chain::many_chain_refm::ha6a6629d685d517b+0xa0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
    7b2c: 66 0f d4 c8                  	paddq	%xmm0, %xmm1
    7b30: 66 0f 70 c1 ee               	pshufd	$0xee, %xmm1, %xmm0     # xmm0 = xmm1[2,3,2,3]
    7b35: 66 0f d4 c1                  	paddq	%xmm1, %xmm0
    7b39: 66 48 0f 7e c0               	movq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
; }
    7b3e: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
    7b45: 5b                           	popq	%rbx
    7b46: 41 5e                        	popq	%r14
    7b48: c3                           	retq
    7b49: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000007b50 <update_data::update::h5964edf586a94d9a>:
; update_data::update::h5964edf586a94d9a():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
    7b50: 48 85 f6                     	testq	%rsi, %rsi
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
    7b53: 74 20                        	je	0x7b75 <update_data::update::h5964edf586a94d9a+0x25>
    7b55: 48 c1 e6 03                  	shlq	$0x3, %rsi
    7b59: 31 c0                        	xorl	%eax, %eax
    7b5b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
    7b60: 48 8b 0c 07                  	movq	(%rdi,%rax), %rcx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
    7b64: 48 0f af c9                  	imulq	%rcx, %rcx
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
    7b68: 48 89 0c 07                  	movq	%rcx, (%rdi,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
    7b6c: 48 83 c0 08                  	addq	$0x8, %rax
    7b70: 48 39 c6                     	cmpq	%rax, %rsi
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
    7b73: 75 eb                        	jne	0x7b60 <update_data::update::h5964edf586a94d9a+0x10>
; /path/perf-case-study/crates/update-data/src/lib.rs:7
; }
    7b75: c3                           	retq
    7b76: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
