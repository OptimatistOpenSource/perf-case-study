DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
00000000002d62b8 R_X86_64_GLOB_DAT        memcpy

00000000000d0690 <perf_case::chain::many_chain::hba1e7798f4d6f899>:
; perf_case::chain::many_chain::hba1e7798f4d6f899():
; /path/perf-case-study/crates/perf-case/src/chain.rs:49
; pub fn many_chain(arg: ChainState) -> u64 {
   d0690: 48 89 fe                     	movq	%rdi, %rsi
   d0693: b8 0c 00 00 00               	movl	$0xc, %eax
   d0698: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d06a0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d06a6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d06ac: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d06b2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d06b7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d06bc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d06c0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d06c5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d06c9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d06cd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d06d2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d06d6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d06db: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d06df: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d06e3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d06e8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d06ec: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d06f1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d06f5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d06f9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d06fe: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0702: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0707: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d070b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d070f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0715: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d071b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0721: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0726: 48 83 c0 10                  	addq	$0x10, %rax
   d072a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0730: 0f 85 6a ff ff ff            	jne	0xd06a0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x10>
   d0736: 49 89 e3                     	movq	%rsp, %r11
   d0739: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
   d0740: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   d0747: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   d074f: 4c 39 dc                     	cmpq	%r11, %rsp
   d0752: 75 ec                        	jne	0xd0740 <perf_case::chain::many_chain::hba1e7798f4d6f899+0xb0>
   d0754: 48 83 ec 18                  	subq	$0x18, %rsp
   d0758: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   d075d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d0762: c5 f8 77                     	vzeroupper
   d0765: ff 15 4d 5b 20 00            	callq	*0x205b4d(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
   d076b: b8 0c 00 00 00               	movl	$0xc, %eax
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0770: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d0776: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d077c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d0782: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0788: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d078d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0791: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0796: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d079a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d079e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d07a3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d07a7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d07ac: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d07b0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d07b4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d07b9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d07bd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d07c2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d07c6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d07ca: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d07cf: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d07d3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d07d8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d07dc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d07e0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d07e6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d07ec: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d07f2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d07f8: 48 83 c0 10                  	addq	$0x10, %rax
   d07fc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0802: 0f 85 68 ff ff ff            	jne	0xd0770 <perf_case::chain::many_chain::hba1e7798f4d6f899+0xe0>
   d0808: b8 0c 00 00 00               	movl	$0xc, %eax
   d080d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0810: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d0816: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d081c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d0822: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0828: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d082d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0831: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0836: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d083a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d083e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0843: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0847: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d084c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0850: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0854: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0859: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d085d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0862: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0866: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d086a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d086f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0873: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0878: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d087c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0880: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d0886: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d088c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d0892: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d0898: 48 83 c0 10                  	addq	$0x10, %rax
   d089c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d08a2: 0f 85 68 ff ff ff            	jne	0xd0810 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x180>
   d08a8: b8 0c 00 00 00               	movl	$0xc, %eax
   d08ad: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d08b0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d08b6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d08bc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d08c2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d08c8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d08cd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d08d1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d08d6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d08da: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d08de: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d08e3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d08e7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d08ec: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d08f0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d08f4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d08f9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d08fd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0902: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0906: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d090a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d090f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0913: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0918: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d091c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0920: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d0926: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d092c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d0932: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d0938: 48 83 c0 10                  	addq	$0x10, %rax
   d093c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0942: 0f 85 68 ff ff ff            	jne	0xd08b0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x220>
   d0948: b8 0c 00 00 00               	movl	$0xc, %eax
   d094d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0950: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d0956: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d095c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d0962: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0968: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d096d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0971: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0976: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d097a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d097e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0983: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0987: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d098c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0990: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0994: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0999: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d099d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d09a2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d09a6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d09aa: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d09af: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d09b3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d09b8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d09bc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d09c0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d09c6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d09cc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d09d2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d09d8: 48 83 c0 10                  	addq	$0x10, %rax
   d09dc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d09e2: 0f 85 68 ff ff ff            	jne	0xd0950 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x2c0>
   d09e8: b8 0c 00 00 00               	movl	$0xc, %eax
   d09ed: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d09f0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d09f6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d09fc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d0a02: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0a08: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0a0d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0a11: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0a16: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0a1a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0a1e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0a23: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0a27: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0a2c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0a30: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0a34: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0a39: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0a3d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0a42: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0a46: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0a4a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0a4f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0a53: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0a58: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0a5c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0a60: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d0a66: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d0a6c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d0a72: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d0a78: 48 83 c0 10                  	addq	$0x10, %rax
   d0a7c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0a82: 0f 85 68 ff ff ff            	jne	0xd09f0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x360>
   d0a88: b8 0c 00 00 00               	movl	$0xc, %eax
   d0a8d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0a90: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   d0a96: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   d0a9c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   d0aa2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0aa8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0aad: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0ab1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0ab6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0aba: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0abe: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0ac3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0ac7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0acc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0ad0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0ad4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0ad9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0add: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0ae2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0ae6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0aea: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0aef: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0af3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0af8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0afc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0b00: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   d0b06: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   d0b0c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   d0b12: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   d0b18: 48 83 c0 10                  	addq	$0x10, %rax
   d0b1c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0b22: 0f 85 68 ff ff ff            	jne	0xd0a90 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x400>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   d0b28: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
   d0b30: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
   d0b35: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d0b3a: c5 f8 77                     	vzeroupper
   d0b3d: ff 15 75 57 20 00            	callq	*0x205775(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
   d0b43: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   d0b47: b8 3e 00 00 00               	movl	$0x3e, %eax
   d0b4c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   d0b50: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   d0b54: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
   d0b58: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   d0b60: c5 fd d4 84 c4 28 fe 07 00   	vpaddq	0x7fe28(%rsp,%rax,8), %ymm0, %ymm0
   d0b69: c5 f5 d4 8c c4 48 fe 07 00   	vpaddq	0x7fe48(%rsp,%rax,8), %ymm1, %ymm1
   d0b72: c5 ed d4 94 c4 68 fe 07 00   	vpaddq	0x7fe68(%rsp,%rax,8), %ymm2, %ymm2
   d0b7b: c5 e5 d4 9c c4 88 fe 07 00   	vpaddq	0x7fe88(%rsp,%rax,8), %ymm3, %ymm3
   d0b84: c5 fd d4 84 c4 a8 fe 07 00   	vpaddq	0x7fea8(%rsp,%rax,8), %ymm0, %ymm0
   d0b8d: c5 f5 d4 8c c4 c8 fe 07 00   	vpaddq	0x7fec8(%rsp,%rax,8), %ymm1, %ymm1
   d0b96: c5 ed d4 94 c4 e8 fe 07 00   	vpaddq	0x7fee8(%rsp,%rax,8), %ymm2, %ymm2
   d0b9f: c5 e5 d4 9c c4 08 ff 07 00   	vpaddq	0x7ff08(%rsp,%rax,8), %ymm3, %ymm3
   d0ba8: c5 fd d4 84 c4 28 ff 07 00   	vpaddq	0x7ff28(%rsp,%rax,8), %ymm0, %ymm0
   d0bb1: c5 f5 d4 8c c4 48 ff 07 00   	vpaddq	0x7ff48(%rsp,%rax,8), %ymm1, %ymm1
   d0bba: c5 ed d4 94 c4 68 ff 07 00   	vpaddq	0x7ff68(%rsp,%rax,8), %ymm2, %ymm2
   d0bc3: c5 e5 d4 9c c4 88 ff 07 00   	vpaddq	0x7ff88(%rsp,%rax,8), %ymm3, %ymm3
   d0bcc: c5 fd d4 84 c4 a8 ff 07 00   	vpaddq	0x7ffa8(%rsp,%rax,8), %ymm0, %ymm0
   d0bd5: c5 f5 d4 8c c4 c8 ff 07 00   	vpaddq	0x7ffc8(%rsp,%rax,8), %ymm1, %ymm1
   d0bde: c5 ed d4 94 c4 e8 ff 07 00   	vpaddq	0x7ffe8(%rsp,%rax,8), %ymm2, %ymm2
   d0be7: c5 e5 d4 9c c4 08 00 08 00   	vpaddq	0x80008(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   d0bf0: 48 83 c0 40                  	addq	$0x40, %rax
   d0bf4: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   d0bfa: 0f 85 60 ff ff ff            	jne	0xd0b60 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x4d0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   d0c00: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d0c04: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   d0c08: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d0c0c: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   d0c12: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d0c16: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   d0c1b: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d0c1f: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:58
; }
   d0c24: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
   d0c2b: c5 f8 77                     	vzeroupper
   d0c2e: c3                           	retq
   d0c2f: 00 48 89                     	addb	%cl, -0x77(%rax)

00000000000d0c30 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5>:
; perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5():
; /path/perf-case-study/crates/perf-case/src/chain.rs:61
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
   d0c30: 48 89 fe                     	movq	%rdi, %rsi
   d0c33: b8 0c 00 00 00               	movl	$0xc, %eax
   d0c38: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0c40: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0c46: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0c4c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0c52: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0c57: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0c5c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0c60: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0c65: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0c69: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0c6d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0c72: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0c76: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0c7b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0c7f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0c83: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0c88: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0c8c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0c91: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0c95: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0c99: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0c9e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0ca2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0ca7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0cab: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0caf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0cb5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0cbb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0cc1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0cc6: 48 83 c0 10                  	addq	$0x10, %rax
   d0cca: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0cd0: 0f 85 6a ff ff ff            	jne	0xd0c40 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x10>
   d0cd6: b8 0c 00 00 00               	movl	$0xc, %eax
   d0cdb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0ce0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0ce6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0cec: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0cf2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0cf7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0cfc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0d00: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0d05: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0d09: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0d0d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0d12: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0d16: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0d1b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0d1f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0d23: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0d28: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0d2c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0d31: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0d35: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0d39: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0d3e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0d42: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0d47: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0d4b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0d4f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0d55: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0d5b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0d61: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0d66: 48 83 c0 10                  	addq	$0x10, %rax
   d0d6a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0d70: 0f 85 6a ff ff ff            	jne	0xd0ce0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0xb0>
   d0d76: b8 0c 00 00 00               	movl	$0xc, %eax
   d0d7b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0d80: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0d86: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0d8c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0d92: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0d97: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0d9c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0da0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0da5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0da9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0dad: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0db2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0db6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0dbb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0dbf: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0dc3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0dc8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0dcc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0dd1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0dd5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0dd9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0dde: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0de2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0de7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0deb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0def: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0df5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0dfb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0e01: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0e06: 48 83 c0 10                  	addq	$0x10, %rax
   d0e0a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0e10: 0f 85 6a ff ff ff            	jne	0xd0d80 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x150>
   d0e16: b8 0c 00 00 00               	movl	$0xc, %eax
   d0e1b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0e20: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0e26: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0e2c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0e32: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0e37: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0e3c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0e40: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0e45: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0e49: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0e4d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0e52: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0e56: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0e5b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0e5f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0e63: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0e68: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0e6c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0e71: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0e75: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0e79: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0e7e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0e82: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0e87: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0e8b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0e8f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0e95: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0e9b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0ea1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0ea6: 48 83 c0 10                  	addq	$0x10, %rax
   d0eaa: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0eb0: 0f 85 6a ff ff ff            	jne	0xd0e20 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x1f0>
   d0eb6: b8 0c 00 00 00               	movl	$0xc, %eax
   d0ebb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0ec0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0ec6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0ecc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0ed2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0ed7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0edc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0ee0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0ee5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0ee9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0eed: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0ef2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0ef6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0efb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0eff: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0f03: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0f08: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0f0c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0f11: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0f15: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0f19: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0f1e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0f22: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0f27: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0f2b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0f2f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0f35: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0f3b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0f41: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0f46: 48 83 c0 10                  	addq	$0x10, %rax
   d0f4a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0f50: 0f 85 6a ff ff ff            	jne	0xd0ec0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x290>
   d0f56: b8 0c 00 00 00               	movl	$0xc, %eax
   d0f5b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0f60: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d0f66: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d0f6c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d0f72: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d0f77: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d0f7c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d0f80: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0f85: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d0f89: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d0f8d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d0f92: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d0f96: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0f9b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d0f9f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d0fa3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d0fa8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d0fac: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0fb1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d0fb5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d0fb9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d0fbe: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d0fc2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d0fc7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d0fcb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d0fcf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d0fd5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d0fdb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d0fe1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d0fe6: 48 83 c0 10                  	addq	$0x10, %rax
   d0fea: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d0ff0: 0f 85 6a ff ff ff            	jne	0xd0f60 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x330>
   d0ff6: b8 0c 00 00 00               	movl	$0xc, %eax
   d0ffb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d1000: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   d1006: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   d100c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   d1012: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   d1017: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   d101c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   d1020: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d1025: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   d1029: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   d102d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   d1032: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   d1036: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d103b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   d103f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   d1043: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   d1048: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   d104c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d1051: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   d1055: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   d1059: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   d105e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   d1062: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   d1067: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   d106b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   d106f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   d1075: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   d107b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   d1081: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   d1086: 48 83 c0 10                  	addq	$0x10, %rax
   d108a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   d1090: 0f 85 6a ff ff ff            	jne	0xd1000 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x3d0>
   d1096: 49 89 e3                     	movq	%rsp, %r11
   d1099: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
   d10a0: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   d10a7: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   d10af: 4c 39 dc                     	cmpq	%r11, %rsp
   d10b2: 75 ec                        	jne	0xd10a0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x470>
   d10b4: 48 83 ec 18                  	subq	$0x18, %rsp
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   d10b8: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
;     arg.finalize()
   d10bd: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   d10c2: c5 f8 77                     	vzeroupper
   d10c5: ff 15 ed 51 20 00            	callq	*0x2051ed(%rip)         # 0x2d62b8 <_GLOBAL_OFFSET_TABLE_+0x1d38>
   d10cb: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   d10cf: b8 3e 00 00 00               	movl	$0x3e, %eax
   d10d4: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   d10d8: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   d10dc: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   d10e0: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
   d10e9: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
   d10f2: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
   d10fb: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
   d1104: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
   d110d: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
   d1116: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
   d111f: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
   d1128: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
   d1131: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
   d113a: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
   d1143: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
   d1149: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
   d114f: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
   d1155: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
   d115b: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   d1161: 48 83 c0 40                  	addq	$0x40, %rax
   d1165: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   d116b: 0f 85 6f ff ff ff            	jne	0xd10e0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x4b0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   d1171: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d1175: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   d1179: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   d117d: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   d1183: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d1187: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   d118c: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   d1190: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:70
; }
   d1195: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
   d119c: c5 f8 77                     	vzeroupper
   d119f: c3                           	retq
