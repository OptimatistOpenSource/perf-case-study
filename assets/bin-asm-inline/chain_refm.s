DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000056110 R_X86_64_GLOB_DAT        memcpy

00000000000146c0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5>:
; perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5():
; /path/perf-case-study/crates/perf-case/src/chain.rs:60
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
   146c0: 48 89 fe                     	movq	%rdi, %rsi
   146c3: b8 0c 00 00 00               	movl	$0xc, %eax
   146c8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   146d0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   146d6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   146dc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   146e2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   146e7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   146ec: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   146f0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   146f5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   146f9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   146fd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14702: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14706: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1470b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1470f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14713: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14718: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1471c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14721: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14725: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14729: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1472e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14732: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14737: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1473b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1473f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14745: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1474b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14751: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14756: 48 83 c0 10                  	addq	$0x10, %rax
   1475a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14760: 0f 85 6a ff ff ff            	jne	0x146d0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x10>
   14766: b8 0c 00 00 00               	movl	$0xc, %eax
   1476b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14770: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14776: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1477c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14782: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14787: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1478c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14790: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14795: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14799: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1479d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   147a2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   147a6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147ab: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   147af: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   147b3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   147b8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   147bc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147c1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   147c5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   147c9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   147ce: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   147d2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147d7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   147db: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   147df: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   147e5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   147eb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   147f1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   147f6: 48 83 c0 10                  	addq	$0x10, %rax
   147fa: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14800: 0f 85 6a ff ff ff            	jne	0x14770 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0xb0>
   14806: b8 0c 00 00 00               	movl	$0xc, %eax
   1480b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14810: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14816: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1481c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14822: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14827: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1482c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14830: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14835: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14839: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1483d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14842: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14846: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1484b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1484f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14853: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14858: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1485c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14861: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14865: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14869: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1486e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14872: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14877: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1487b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1487f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14885: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1488b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14891: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14896: 48 83 c0 10                  	addq	$0x10, %rax
   1489a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   148a0: 0f 85 6a ff ff ff            	jne	0x14810 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x150>
   148a6: b8 0c 00 00 00               	movl	$0xc, %eax
   148ab: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   148b0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   148b6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   148bc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   148c2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   148c7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   148cc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   148d0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148d5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   148d9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   148dd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   148e2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   148e6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148eb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   148ef: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   148f3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   148f8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   148fc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14901: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14905: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14909: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1490e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14912: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14917: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1491b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1491f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14925: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1492b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14931: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14936: 48 83 c0 10                  	addq	$0x10, %rax
   1493a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14940: 0f 85 6a ff ff ff            	jne	0x148b0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x1f0>
   14946: b8 0c 00 00 00               	movl	$0xc, %eax
   1494b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14950: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14956: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1495c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14962: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14967: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1496c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14970: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14975: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14979: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1497d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14982: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14986: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1498b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1498f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14993: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14998: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1499c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149a1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   149a5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   149a9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   149ae: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   149b2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149b7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   149bb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   149bf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   149c5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   149cb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   149d1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   149d6: 48 83 c0 10                  	addq	$0x10, %rax
   149da: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   149e0: 0f 85 6a ff ff ff            	jne	0x14950 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x290>
   149e6: b8 0c 00 00 00               	movl	$0xc, %eax
   149eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   149f0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   149f6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   149fc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14a02: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14a07: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14a0c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14a10: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a15: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14a19: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14a1d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14a22: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14a26: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a2b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14a2f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14a33: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14a38: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14a3c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a41: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14a45: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14a49: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14a4e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14a52: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a57: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14a5b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a5f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14a65: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   14a6b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14a71: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14a76: 48 83 c0 10                  	addq	$0x10, %rax
   14a7a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14a80: 0f 85 6a ff ff ff            	jne	0x149f0 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x330>
   14a86: b8 0c 00 00 00               	movl	$0xc, %eax
   14a8b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a90: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14a96: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   14a9c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14aa2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14aa7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14aac: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14ab0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ab5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14ab9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14abd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14ac2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14ac6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14acb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14acf: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14ad3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14ad8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14adc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ae1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14ae5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14ae9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14aee: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14af2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14af7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14afb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14aff: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14b05: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   14b0b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14b11: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14b16: 48 83 c0 10                  	addq	$0x10, %rax
   14b1a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14b20: 0f 85 6a ff ff ff            	jne	0x14a90 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x3d0>
   14b26: 49 89 e3                     	movq	%rsp, %r11
   14b29: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
   14b30: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   14b37: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   14b3f: 4c 39 dc                     	cmpq	%r11, %rsp
   14b42: 75 ec                        	jne	0x14b30 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x470>
   14b44: 48 83 ec 18                  	subq	$0x18, %rsp
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   14b48: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:68
;     arg.finalize()
   14b4d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14b52: c5 f8 77                     	vzeroupper
   14b55: ff 15 b5 15 04 00            	callq	*0x415b5(%rip)          # 0x56110 <_GLOBAL_OFFSET_TABLE_+0x7e0>
   14b5b: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   14b5f: b8 3e 00 00 00               	movl	$0x3e, %eax
   14b64: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   14b68: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   14b6c: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   14b70: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
   14b79: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
   14b82: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
   14b8b: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
   14b94: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
   14b9d: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
   14ba6: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
   14baf: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
   14bb8: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
   14bc1: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
   14bca: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
   14bd3: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
   14bd9: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
   14bdf: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
   14be5: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
   14beb: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   14bf1: 48 83 c0 40                  	addq	$0x40, %rax
   14bf5: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   14bfb: 0f 85 6f ff ff ff            	jne	0x14b70 <perf_case::chain::many_chain_refm::h1a0bdb98e46ab4f5+0x4b0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   14c01: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c05: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   14c09: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c0d: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   14c13: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c17: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   14c1c: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c20: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
; }
   14c25: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
   14c2c: c5 f8 77                     	vzeroupper
   14c2f: c3                           	retq
