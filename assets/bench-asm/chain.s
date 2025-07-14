DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
00000000002d5ce8 R_X86_64_GLOB_DAT        memcpy

00000000000d06f0 <perf_case::chain::many_chain::h12412cd1860633f8>:
; perf_case::chain::many_chain::h12412cd1860633f8():
; /path/perf-case-study/crates/perf-case/src/chain.rs:48
; pub fn many_chain(arg: ChainState) -> u64 {
   d06f0: 41 57                        	pushq	%r15
   d06f2: 41 56                        	pushq	%r14
   d06f4: 41 54                        	pushq	%r12
   d06f6: 53                           	pushq	%rbx
   d06f7: 49 89 e3                     	movq	%rsp, %r11
   d06fa: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
   d0701: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   d0708: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   d0710: 4c 39 dc                     	cmpq	%r11, %rsp
   d0713: 75 ec                        	jne	0xd0701 <perf_case::chain::many_chain::h12412cd1860633f8+0x11>
   d0715: 48 83 ec 18                  	subq	$0x18, %rsp
   d0719: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d071c: 4c 8d 25 4d 03 00 00         	leaq	0x34d(%rip), %r12       # 0xd0a70 <update_data::update::h5964edf586a94d9a>
   d0723: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0728: 41 ff d4                     	callq	*%r12
   d072b: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
   d0730: 4c 8b 3d b1 55 20 00         	movq	0x2055b1(%rip), %r15    # 0x2d5ce8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d0737: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d073c: 4c 89 f7                     	movq	%r14, %rdi
   d073f: 48 89 de                     	movq	%rbx, %rsi
   d0742: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d0745: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d074a: 4c 89 f7                     	movq	%r14, %rdi
   d074d: 41 ff d4                     	callq	*%r12
   d0750: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d0758: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d075d: 48 89 df                     	movq	%rbx, %rdi
   d0760: 4c 89 f6                     	movq	%r14, %rsi
   d0763: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d0766: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d076b: 48 89 df                     	movq	%rbx, %rdi
   d076e: 41 ff d4                     	callq	*%r12
   d0771: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d0776: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d077b: 4c 89 f7                     	movq	%r14, %rdi
   d077e: 48 89 de                     	movq	%rbx, %rsi
   d0781: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d0784: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0789: 4c 89 f7                     	movq	%r14, %rdi
   d078c: 41 ff d4                     	callq	*%r12
   d078f: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d0797: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d079c: 48 89 df                     	movq	%rbx, %rdi
   d079f: 4c 89 f6                     	movq	%r14, %rsi
   d07a2: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d07a5: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d07aa: 48 89 df                     	movq	%rbx, %rdi
   d07ad: 41 ff d4                     	callq	*%r12
   d07b0: 4c 8d 74 24 08               	leaq	0x8(%rsp), %r14
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d07b5: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d07ba: 4c 89 f7                     	movq	%r14, %rdi
   d07bd: 48 89 de                     	movq	%rbx, %rsi
   d07c0: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d07c3: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d07c8: 4c 89 f7                     	movq	%r14, %rdi
   d07cb: 41 ff d4                     	callq	*%r12
   d07ce: 48 8d 9c 24 18 00 08 00      	leaq	0x80018(%rsp), %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d07d6: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d07db: 48 89 df                     	movq	%rbx, %rdi
   d07de: 4c 89 f6                     	movq	%r14, %rsi
   d07e1: 41 ff d7                     	callq	*%r15
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d07e4: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d07e9: 48 89 df                     	movq	%rbx, %rdi
   d07ec: 41 ff d4                     	callq	*%r12
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   d07ef: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d07f4: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d07f9: 48 89 de                     	movq	%rbx, %rsi
   d07fc: 41 ff d7                     	callq	*%r15
   d07ff: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   d0803: b8 3e 00 00 00               	movl	$0x3e, %eax
   d0808: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   d080c: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   d0810: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
   d0814: 66 66 66 2e 0f 1f 84 00 00 00 00 00  	nopw	%cs:(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   d0820: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
   d0829: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
   d0832: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
   d083b: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
   d0844: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
   d084d: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
   d0856: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
   d085f: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
   d0868: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
   d0871: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
   d087a: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
   d0883: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
   d0889: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
   d088f: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
   d0895: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
   d089b: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   d08a1: 48 83 c0 40                  	addq	$0x40, %rax
   d08a5: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   d08ab: 0f 85 6f ff ff ff            	jne	0xd0820 <perf_case::chain::many_chain::h12412cd1860633f8+0x130>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   d08b1: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d08b5: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   d08b9: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d08bd: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   d08c3: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d08c7: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   d08cc: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d08d0: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:57
; }
   d08d5: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
   d08dc: 5b                           	popq	%rbx
   d08dd: 41 5c                        	popq	%r12
   d08df: 41 5e                        	popq	%r14
   d08e1: 41 5f                        	popq	%r15
   d08e3: c5 f8 77                     	vzeroupper
   d08e6: c3                           	retq
		...
   d08ef: 00 41 56                     	addb	%al, 0x56(%rcx)

00000000000d08f0 <perf_case::chain::many_chain_refm::ha6a6629d685d517b>:
; perf_case::chain::many_chain_refm::ha6a6629d685d517b():
; /path/perf-case-study/crates/perf-case/src/chain.rs:60
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
   d08f0: 41 56                        	pushq	%r14
   d08f2: 53                           	pushq	%rbx
   d08f3: 49 89 e3                     	movq	%rsp, %r11
   d08f6: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
   d08fd: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   d0904: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   d090c: 4c 39 dc                     	cmpq	%r11, %rsp
   d090f: 75 ec                        	jne	0xd08fd <perf_case::chain::many_chain_refm::ha6a6629d685d517b+0xd>
   d0911: 48 83 ec 18                  	subq	$0x18, %rsp
   d0915: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/chain.rs:27
;         update_data::update(&mut self.state);
   d0918: 4c 8d 35 51 01 00 00         	leaq	0x151(%rip), %r14       # 0xd0a70 <update_data::update::h5964edf586a94d9a>
   d091f: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0924: 41 ff d6                     	callq	*%r14
   d0927: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d092c: 48 89 df                     	movq	%rbx, %rdi
   d092f: 41 ff d6                     	callq	*%r14
   d0932: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0937: 48 89 df                     	movq	%rbx, %rdi
   d093a: 41 ff d6                     	callq	*%r14
   d093d: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0942: 48 89 df                     	movq	%rbx, %rdi
   d0945: 41 ff d6                     	callq	*%r14
   d0948: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d094d: 48 89 df                     	movq	%rbx, %rdi
   d0950: 41 ff d6                     	callq	*%r14
   d0953: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0958: 48 89 df                     	movq	%rbx, %rdi
   d095b: 41 ff d6                     	callq	*%r14
   d095e: be 00 00 01 00               	movl	$0x10000, %esi          # imm = 0x10000
   d0963: 48 89 df                     	movq	%rbx, %rdi
   d0966: 41 ff d6                     	callq	*%r14
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   d0969: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:68
;     arg.finalize()
   d096e: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d0973: 48 89 de                     	movq	%rbx, %rsi
   d0976: ff 15 6c 53 20 00            	callq	*0x20536c(%rip)         # 0x2d5ce8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
   d097c: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   d0980: b8 3e 00 00 00               	movl	$0x3e, %eax
   d0985: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   d0989: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   d098d: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
   d0991: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   d09a0: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
   d09a9: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
   d09b2: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
   d09bb: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
   d09c4: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
   d09cd: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
   d09d6: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
   d09df: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
   d09e8: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
   d09f1: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
   d09fa: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
   d0a03: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
   d0a09: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
   d0a0f: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
   d0a15: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
   d0a1b: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   d0a21: 48 83 c0 40                  	addq	$0x40, %rax
   d0a25: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   d0a2b: 0f 85 6f ff ff ff            	jne	0xd09a0 <perf_case::chain::many_chain_refm::ha6a6629d685d517b+0xb0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   d0a31: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d0a35: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   d0a39: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d0a3d: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   d0a43: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d0a47: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   d0a4c: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d0a50: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
; }
   d0a55: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
   d0a5c: 5b                           	popq	%rbx
   d0a5d: 41 5e                        	popq	%r14
   d0a5f: c5 f8 77                     	vzeroupper
   d0a62: c3                           	retq
		...
   d0a6f: 00 48 85                     	addb	%cl, -0x7b(%rax)

00000000000d0a70 <update_data::update::h5964edf586a94d9a>:
; update_data::update::h5964edf586a94d9a():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
   d0a70: 48 85 f6                     	testq	%rsi, %rsi
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0a73: 0f 84 4d 01 00 00            	je	0xd0bc6 <update_data::update::h5964edf586a94d9a+0x156>
   d0a79: 48 8d 46 ff                  	leaq	-0x1(%rsi), %rax
   d0a7d: b1 3d                        	movb	$0x3d, %cl
   d0a7f: c4 e2 f0 f5 d0               	bzhiq	%rcx, %rax, %rdx
   d0a84: 49 89 f8                     	movq	%rdi, %r8
   d0a87: 48 83 fa 03                  	cmpq	$0x3, %rdx
   d0a8b: 0f 82 13 01 00 00            	jb	0xd0ba4 <update_data::update::h5964edf586a94d9a+0x134>
   d0a91: 48 8d 42 01                  	leaq	0x1(%rdx), %rax
   d0a95: 48 b9 f0 ff ff ff ff ff ff 3f	movabsq	$0x3ffffffffffffff0, %rcx # imm = 0x3FFFFFFFFFFFFFF0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0a9f: 48 83 fa 0f                  	cmpq	$0xf, %rdx
   d0aa3: 73 07                        	jae	0xd0aac <update_data::update::h5964edf586a94d9a+0x3c>
   d0aa5: 31 d2                        	xorl	%edx, %edx
   d0aa7: e9 b8 00 00 00               	jmp	0xd0b64 <update_data::update::h5964edf586a94d9a+0xf4>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0aac: 48 89 c2                     	movq	%rax, %rdx
   d0aaf: 48 21 ca                     	andq	%rcx, %rdx
   d0ab2: 45 31 c0                     	xorl	%r8d, %r8d
   d0ab5: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0ac0: c4 a1 7e 6f 04 c7            	vmovdqu	(%rdi,%r8,8), %ymm0
   d0ac6: c4 a1 7e 6f 4c c7 20         	vmovdqu	0x20(%rdi,%r8,8), %ymm1
   d0acd: c4 a1 7e 6f 54 c7 40         	vmovdqu	0x40(%rdi,%r8,8), %ymm2
   d0ad4: c4 a1 7e 6f 5c c7 60         	vmovdqu	0x60(%rdi,%r8,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0adb: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0ae0: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0ae4: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0ae9: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0aed: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0af1: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0af6: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0afa: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0aff: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0b03: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0b07: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0b0c: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0b10: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0b15: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0b19: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0b1d: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0b22: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0b26: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0b2b: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0b2f: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0b33: c4 a1 7e 7f 04 c7            	vmovdqu	%ymm0, (%rdi,%r8,8)
   d0b39: c4 a1 7e 7f 4c c7 20         	vmovdqu	%ymm1, 0x20(%rdi,%r8,8)
   d0b40: c4 a1 7e 7f 54 c7 40         	vmovdqu	%ymm2, 0x40(%rdi,%r8,8)
   d0b47: c4 a1 7e 7f 5c c7 60         	vmovdqu	%ymm3, 0x60(%rdi,%r8,8)
   d0b4e: 49 83 c0 10                  	addq	$0x10, %r8
   d0b52: 4c 39 c2                     	cmpq	%r8, %rdx
   d0b55: 0f 85 65 ff ff ff            	jne	0xd0ac0 <update_data::update::h5964edf586a94d9a+0x50>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0b5b: 48 39 d0                     	cmpq	%rdx, %rax
   d0b5e: 74 66                        	je	0xd0bc6 <update_data::update::h5964edf586a94d9a+0x156>
   d0b60: a8 0c                        	testb	$0xc, %al
   d0b62: 74 3c                        	je	0xd0ba0 <update_data::update::h5964edf586a94d9a+0x130>
   d0b64: 48 83 c1 0c                  	addq	$0xc, %rcx
   d0b68: 48 21 c1                     	andq	%rax, %rcx
   d0b6b: 4c 8d 04 cf                  	leaq	(%rdi,%rcx,8), %r8
   d0b6f: 90                           	nop
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0b70: c5 fe 6f 04 d7               	vmovdqu	(%rdi,%rdx,8), %ymm0
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0b75: c5 f5 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm1
   d0b7a: c5 fd f4 c9                  	vpmuludq	%ymm1, %ymm0, %ymm1
   d0b7e: c5 f5 73 f1 21               	vpsllq	$0x21, %ymm1, %ymm1
   d0b83: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0b87: c5 fd d4 c1                  	vpaddq	%ymm1, %ymm0, %ymm0
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0b8b: c5 fe 7f 04 d7               	vmovdqu	%ymm0, (%rdi,%rdx,8)
   d0b90: 48 83 c2 04                  	addq	$0x4, %rdx
   d0b94: 48 39 d1                     	cmpq	%rdx, %rcx
   d0b97: 75 d7                        	jne	0xd0b70 <update_data::update::h5964edf586a94d9a+0x100>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0b99: 48 39 c8                     	cmpq	%rcx, %rax
   d0b9c: 75 06                        	jne	0xd0ba4 <update_data::update::h5964edf586a94d9a+0x134>
   d0b9e: eb 26                        	jmp	0xd0bc6 <update_data::update::h5964edf586a94d9a+0x156>
   d0ba0: 4c 8d 04 d7                  	leaq	(%rdi,%rdx,8), %r8
   d0ba4: 48 8d 04 f7                  	leaq	(%rdi,%rsi,8), %rax
   d0ba8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0bb0: 49 8b 08                     	movq	(%r8), %rcx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0bb3: 48 0f af c9                  	imulq	%rcx, %rcx
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0bb7: 49 89 08                     	movq	%rcx, (%r8)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:616
;         unsafe { NonNull { pointer: intrinsics::offset(self.as_ptr(), count) } }
   d0bba: 49 8d 48 08                  	leaq	0x8(%r8), %rcx
   d0bbe: 49 89 c8                     	movq	%rcx, %r8
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/non_null.rs:1620
;         self.as_ptr() == other.as_ptr()
   d0bc1: 48 39 c1                     	cmpq	%rax, %rcx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/iter/macros.rs:179
;                         if ptr == crate::intrinsics::transmute::<$ptr, NonNull<T>>(end_or_len) {
   d0bc4: 75 ea                        	jne	0xd0bb0 <update_data::update::h5964edf586a94d9a+0x140>
; /path/perf-case-study/crates/update-data/src/lib.rs:7
; }
   d0bc6: c5 f8 77                     	vzeroupper
   d0bc9: c3                           	retq
   d0bca: 00 00                        	addb	%al, (%rax)
   d0bcc: 00 00                        	addb	%al, (%rax)
   d0bce: 00 00                        	addb	%al, (%rax)
