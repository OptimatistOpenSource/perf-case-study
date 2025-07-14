DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
000000000028a840 R_X86_64_GLOB_DAT        memcpy

00000000001bec50 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef>:
; perf_case::chain::many_chain::he5fd9c9a3b3a10ef():
; /path/perf-case-study/crates/perf-case/src/chain.rs:48
; pub fn many_chain(arg: ChainState) -> u64 {
  1bec50: 48 89 fe                     	movq	%rdi, %rsi
  1bec53: b8 0c 00 00 00               	movl	$0xc, %eax
  1bec58: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bec60: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bec66: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bec6c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bec72: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bec77: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bec7c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bec80: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bec85: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bec89: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bec8d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bec92: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bec96: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bec9b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bec9f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1beca3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1beca8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1becac: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1becb1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1becb5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1becb9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1becbe: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1becc2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1becc7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1beccb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1beccf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1becd5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1becdb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bece1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bece6: 48 83 c0 10                  	addq	$0x10, %rax
  1becea: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1becf0: 0f 85 6a ff ff ff            	jne	0x1bec60 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x10>
  1becf6: 49 89 e3                     	movq	%rsp, %r11
  1becf9: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
  1bed00: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
  1bed07: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
  1bed0f: 4c 39 dc                     	cmpq	%r11, %rsp
  1bed12: 75 ec                        	jne	0x1bed00 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0xb0>
  1bed14: 48 83 ec 18                  	subq	$0x18, %rsp
  1bed18: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
  1bed1d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
  1bed22: c5 f8 77                     	vzeroupper
  1bed25: ff 15 15 bb 0c 00            	callq	*0xcbb15(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
  1bed2b: b8 0c 00 00 00               	movl	$0xc, %eax
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bed30: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1bed36: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1bed3c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1bed42: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bed48: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bed4d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bed51: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bed56: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bed5a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bed5e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bed63: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bed67: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bed6c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bed70: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bed74: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bed79: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bed7d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bed82: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bed86: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bed8a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bed8f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bed93: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bed98: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bed9c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1beda0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1beda6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1bedac: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1bedb2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1bedb8: 48 83 c0 10                  	addq	$0x10, %rax
  1bedbc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bedc2: 0f 85 68 ff ff ff            	jne	0x1bed30 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0xe0>
  1bedc8: b8 0c 00 00 00               	movl	$0xc, %eax
  1bedcd: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bedd0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1bedd6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1beddc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1bede2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bede8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1beded: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bedf1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bedf6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bedfa: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bedfe: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bee03: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bee07: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bee0c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bee10: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bee14: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bee19: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bee1d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bee22: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bee26: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bee2a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bee2f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bee33: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bee38: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bee3c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bee40: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1bee46: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1bee4c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1bee52: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1bee58: 48 83 c0 10                  	addq	$0x10, %rax
  1bee5c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bee62: 0f 85 68 ff ff ff            	jne	0x1bedd0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x180>
  1bee68: b8 0c 00 00 00               	movl	$0xc, %eax
  1bee6d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bee70: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1bee76: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1bee7c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1bee82: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bee88: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bee8d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bee91: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bee96: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bee9a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bee9e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1beea3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1beea7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1beeac: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1beeb0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1beeb4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1beeb9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1beebd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1beec2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1beec6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1beeca: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1beecf: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1beed3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1beed8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1beedc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1beee0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1beee6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1beeec: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1beef2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1beef8: 48 83 c0 10                  	addq	$0x10, %rax
  1beefc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bef02: 0f 85 68 ff ff ff            	jne	0x1bee70 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x220>
  1bef08: b8 0c 00 00 00               	movl	$0xc, %eax
  1bef0d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bef10: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1bef16: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1bef1c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1bef22: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bef28: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bef2d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bef31: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bef36: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bef3a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bef3e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bef43: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bef47: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bef4c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bef50: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bef54: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bef59: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bef5d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bef62: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bef66: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bef6a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bef6f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bef73: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bef78: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bef7c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bef80: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1bef86: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1bef8c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1bef92: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1bef98: 48 83 c0 10                  	addq	$0x10, %rax
  1bef9c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1befa2: 0f 85 68 ff ff ff            	jne	0x1bef10 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x2c0>
  1befa8: b8 0c 00 00 00               	movl	$0xc, %eax
  1befad: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1befb0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1befb6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1befbc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1befc2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1befc8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1befcd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1befd1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1befd6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1befda: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1befde: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1befe3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1befe7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1befec: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1beff0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1beff4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1beff9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1beffd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf002: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf006: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf00a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf00f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf013: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf018: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf01c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf020: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1bf026: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1bf02c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1bf032: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1bf038: 48 83 c0 10                  	addq	$0x10, %rax
  1bf03c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf042: 0f 85 68 ff ff ff            	jne	0x1befb0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x360>
  1bf048: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf04d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf050: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
  1bf056: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
  1bf05c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
  1bf062: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf068: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf06d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf071: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf076: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf07a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf07e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf083: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf087: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf08c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf090: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf094: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf099: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf09d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf0a2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf0a6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf0aa: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf0af: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf0b3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf0b8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf0bc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf0c0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
  1bf0c6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
  1bf0cc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
  1bf0d2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
  1bf0d8: 48 83 c0 10                  	addq	$0x10, %rax
  1bf0dc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf0e2: 0f 85 68 ff ff ff            	jne	0x1bf050 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x400>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
  1bf0e8: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
  1bf0f0: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
  1bf0f5: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
  1bf0fa: c5 f8 77                     	vzeroupper
  1bf0fd: ff 15 3d b7 0c 00            	callq	*0xcb73d(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
  1bf103: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
  1bf107: b8 3e 00 00 00               	movl	$0x3e, %eax
  1bf10c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
  1bf110: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
  1bf114: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
  1bf118: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
  1bf120: c5 fd d4 84 c4 28 fe 07 00   	vpaddq	0x7fe28(%rsp,%rax,8), %ymm0, %ymm0
  1bf129: c5 f5 d4 8c c4 48 fe 07 00   	vpaddq	0x7fe48(%rsp,%rax,8), %ymm1, %ymm1
  1bf132: c5 ed d4 94 c4 68 fe 07 00   	vpaddq	0x7fe68(%rsp,%rax,8), %ymm2, %ymm2
  1bf13b: c5 e5 d4 9c c4 88 fe 07 00   	vpaddq	0x7fe88(%rsp,%rax,8), %ymm3, %ymm3
  1bf144: c5 fd d4 84 c4 a8 fe 07 00   	vpaddq	0x7fea8(%rsp,%rax,8), %ymm0, %ymm0
  1bf14d: c5 f5 d4 8c c4 c8 fe 07 00   	vpaddq	0x7fec8(%rsp,%rax,8), %ymm1, %ymm1
  1bf156: c5 ed d4 94 c4 e8 fe 07 00   	vpaddq	0x7fee8(%rsp,%rax,8), %ymm2, %ymm2
  1bf15f: c5 e5 d4 9c c4 08 ff 07 00   	vpaddq	0x7ff08(%rsp,%rax,8), %ymm3, %ymm3
  1bf168: c5 fd d4 84 c4 28 ff 07 00   	vpaddq	0x7ff28(%rsp,%rax,8), %ymm0, %ymm0
  1bf171: c5 f5 d4 8c c4 48 ff 07 00   	vpaddq	0x7ff48(%rsp,%rax,8), %ymm1, %ymm1
  1bf17a: c5 ed d4 94 c4 68 ff 07 00   	vpaddq	0x7ff68(%rsp,%rax,8), %ymm2, %ymm2
  1bf183: c5 e5 d4 9c c4 88 ff 07 00   	vpaddq	0x7ff88(%rsp,%rax,8), %ymm3, %ymm3
  1bf18c: c5 fd d4 84 c4 a8 ff 07 00   	vpaddq	0x7ffa8(%rsp,%rax,8), %ymm0, %ymm0
  1bf195: c5 f5 d4 8c c4 c8 ff 07 00   	vpaddq	0x7ffc8(%rsp,%rax,8), %ymm1, %ymm1
  1bf19e: c5 ed d4 94 c4 e8 ff 07 00   	vpaddq	0x7ffe8(%rsp,%rax,8), %ymm2, %ymm2
  1bf1a7: c5 e5 d4 9c c4 08 00 08 00   	vpaddq	0x80008(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
  1bf1b0: 48 83 c0 40                  	addq	$0x40, %rax
  1bf1b4: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
  1bf1ba: 0f 85 60 ff ff ff            	jne	0x1bf120 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x4d0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
  1bf1c0: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
  1bf1c4: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
  1bf1c8: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
  1bf1cc: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
  1bf1d2: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
  1bf1d6: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
  1bf1db: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
  1bf1df: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:57
; }
  1bf1e4: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
  1bf1eb: c5 f8 77                     	vzeroupper
  1bf1ee: c3                           	retq
  1bf1ef: 00 48 89                     	addb	%cl, -0x77(%rax)

00000000001bf1f0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0>:
; perf_case::chain::many_chain_refm::h3506ece423a3a7c0():
; /path/perf-case-study/crates/perf-case/src/chain.rs:60
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
  1bf1f0: 48 89 fe                     	movq	%rdi, %rsi
  1bf1f3: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf1f8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf200: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf206: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf20c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf212: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf217: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf21c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf220: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf225: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf229: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf22d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf232: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf236: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf23b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf23f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf243: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf248: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf24c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf251: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf255: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf259: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf25e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf262: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf267: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf26b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf26f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf275: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf27b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf281: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf286: 48 83 c0 10                  	addq	$0x10, %rax
  1bf28a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf290: 0f 85 6a ff ff ff            	jne	0x1bf200 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x10>
  1bf296: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf29b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf2a0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf2a6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf2ac: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf2b2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf2b7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf2bc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf2c0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf2c5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf2c9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf2cd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf2d2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf2d6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf2db: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf2df: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf2e3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf2e8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf2ec: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf2f1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf2f5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf2f9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf2fe: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf302: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf307: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf30b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf30f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf315: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf31b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf321: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf326: 48 83 c0 10                  	addq	$0x10, %rax
  1bf32a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf330: 0f 85 6a ff ff ff            	jne	0x1bf2a0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0xb0>
  1bf336: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf33b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf340: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf346: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf34c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf352: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf357: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf35c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf360: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf365: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf369: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf36d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf372: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf376: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf37b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf37f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf383: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf388: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf38c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf391: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf395: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf399: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf39e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf3a2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf3a7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf3ab: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf3af: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf3b5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf3bb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf3c1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf3c6: 48 83 c0 10                  	addq	$0x10, %rax
  1bf3ca: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf3d0: 0f 85 6a ff ff ff            	jne	0x1bf340 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x150>
  1bf3d6: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf3db: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf3e0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf3e6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf3ec: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf3f2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf3f7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf3fc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf400: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf405: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf409: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf40d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf412: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf416: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf41b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf41f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf423: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf428: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf42c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf431: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf435: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf439: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf43e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf442: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf447: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf44b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf44f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf455: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf45b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf461: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf466: 48 83 c0 10                  	addq	$0x10, %rax
  1bf46a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf470: 0f 85 6a ff ff ff            	jne	0x1bf3e0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x1f0>
  1bf476: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf47b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf480: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf486: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf48c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf492: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf497: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf49c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf4a0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf4a5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf4a9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf4ad: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf4b2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf4b6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf4bb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf4bf: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf4c3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf4c8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf4cc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf4d1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf4d5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf4d9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf4de: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf4e2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf4e7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf4eb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf4ef: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf4f5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf4fb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf501: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf506: 48 83 c0 10                  	addq	$0x10, %rax
  1bf50a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf510: 0f 85 6a ff ff ff            	jne	0x1bf480 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x290>
  1bf516: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf51b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf520: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf526: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf52c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf532: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf537: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf53c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf540: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf545: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf549: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf54d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf552: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf556: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf55b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf55f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf563: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf568: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf56c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf571: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf575: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf579: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf57e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf582: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf587: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf58b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf58f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf595: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf59b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf5a1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf5a6: 48 83 c0 10                  	addq	$0x10, %rax
  1bf5aa: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf5b0: 0f 85 6a ff ff ff            	jne	0x1bf520 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x330>
  1bf5b6: b8 0c 00 00 00               	movl	$0xc, %eax
  1bf5bb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf5c0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
  1bf5c6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
  1bf5cc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
  1bf5d2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
  1bf5d7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
  1bf5dc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
  1bf5e0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf5e5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
  1bf5e9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
  1bf5ed: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
  1bf5f2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
  1bf5f6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf5fb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
  1bf5ff: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
  1bf603: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
  1bf608: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
  1bf60c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf611: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
  1bf615: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
  1bf619: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
  1bf61e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
  1bf622: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
  1bf627: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
  1bf62b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
  1bf62f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
  1bf635: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
  1bf63b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
  1bf641: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
  1bf646: 48 83 c0 10                  	addq	$0x10, %rax
  1bf64a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
  1bf650: 0f 85 6a ff ff ff            	jne	0x1bf5c0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x3d0>
  1bf656: 49 89 e3                     	movq	%rsp, %r11
  1bf659: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
  1bf660: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
  1bf667: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
  1bf66f: 4c 39 dc                     	cmpq	%r11, %rsp
  1bf672: 75 ec                        	jne	0x1bf660 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x470>
  1bf674: 48 83 ec 18                  	subq	$0x18, %rsp
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
  1bf678: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:68
;     arg.finalize()
  1bf67d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
  1bf682: c5 f8 77                     	vzeroupper
  1bf685: ff 15 b5 b1 0c 00            	callq	*0xcb1b5(%rip)          # 0x28a840 <_GLOBAL_OFFSET_TABLE_+0x3d8>
  1bf68b: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
  1bf68f: b8 3e 00 00 00               	movl	$0x3e, %eax
  1bf694: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
  1bf698: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
  1bf69c: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
  1bf6a0: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
  1bf6a9: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
  1bf6b2: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
  1bf6bb: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
  1bf6c4: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
  1bf6cd: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
  1bf6d6: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
  1bf6df: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
  1bf6e8: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
  1bf6f1: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
  1bf6fa: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
  1bf703: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
  1bf709: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
  1bf70f: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
  1bf715: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
  1bf71b: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
  1bf721: 48 83 c0 40                  	addq	$0x40, %rax
  1bf725: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
  1bf72b: 0f 85 6f ff ff ff            	jne	0x1bf6a0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x4b0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
  1bf731: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
  1bf735: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
  1bf739: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
  1bf73d: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
  1bf743: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
  1bf747: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
  1bf74c: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
  1bf750: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
; }
  1bf755: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
  1bf75c: c5 f8 77                     	vzeroupper
  1bf75f: c3                           	retq
