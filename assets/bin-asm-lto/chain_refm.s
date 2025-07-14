DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
000000000004dd58 R_X86_64_GLOB_DAT        memcpy

00000000000146a0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0>:
; perf_case::chain::many_chain_refm::h3506ece423a3a7c0():
; /path/perf-case-study/crates/perf-case/src/chain.rs:60
; pub fn many_chain_refm(mut arg: ChainState) -> u64 {
   146a0: 48 89 fe                     	movq	%rdi, %rsi
   146a3: b8 0c 00 00 00               	movl	$0xc, %eax
   146a8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   146b0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   146b6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   146bc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   146c2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   146c7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   146cc: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   146d0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   146d5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   146d9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   146dd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   146e2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   146e6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   146eb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   146ef: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   146f3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   146f8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   146fc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14701: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14705: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14709: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1470e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14712: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14717: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1471b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1471f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14725: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1472b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14731: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14736: 48 83 c0 10                  	addq	$0x10, %rax
   1473a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14740: 0f 85 6a ff ff ff            	jne	0x146b0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x10>
   14746: b8 0c 00 00 00               	movl	$0xc, %eax
   1474b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14750: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14756: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1475c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14762: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14767: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1476c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14770: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14775: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14779: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1477d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14782: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14786: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1478b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1478f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14793: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14798: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1479c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147a1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   147a5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   147a9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   147ae: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   147b2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147b7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   147bb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   147bf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   147c5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   147cb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   147d1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   147d6: 48 83 c0 10                  	addq	$0x10, %rax
   147da: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   147e0: 0f 85 6a ff ff ff            	jne	0x14750 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0xb0>
   147e6: b8 0c 00 00 00               	movl	$0xc, %eax
   147eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   147f0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   147f6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   147fc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14802: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14807: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1480c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14810: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14815: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14819: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1481d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14822: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14826: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1482b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1482f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14833: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14838: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1483c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14841: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14845: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14849: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1484e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14852: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14857: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1485b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1485f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14865: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1486b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14871: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14876: 48 83 c0 10                  	addq	$0x10, %rax
   1487a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14880: 0f 85 6a ff ff ff            	jne	0x147f0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x150>
   14886: b8 0c 00 00 00               	movl	$0xc, %eax
   1488b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14890: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14896: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1489c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   148a2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   148a7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   148ac: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   148b0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148b5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   148b9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   148bd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   148c2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   148c6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148cb: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   148cf: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   148d3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   148d8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   148dc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148e1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   148e5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   148e9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   148ee: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   148f2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148f7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   148fb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   148ff: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14905: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   1490b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14911: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14916: 48 83 c0 10                  	addq	$0x10, %rax
   1491a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14920: 0f 85 6a ff ff ff            	jne	0x14890 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x1f0>
   14926: b8 0c 00 00 00               	movl	$0xc, %eax
   1492b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14930: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14936: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   1493c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14942: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14947: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1494c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14950: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14955: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14959: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1495d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14962: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14966: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1496b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   1496f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14973: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14978: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1497c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14981: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14985: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14989: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1498e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14992: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14997: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1499b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   1499f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   149a5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   149ab: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   149b1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   149b6: 48 83 c0 10                  	addq	$0x10, %rax
   149ba: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   149c0: 0f 85 6a ff ff ff            	jne	0x14930 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x290>
   149c6: b8 0c 00 00 00               	movl	$0xc, %eax
   149cb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   149d0: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   149d6: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   149dc: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   149e2: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   149e7: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   149ec: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   149f0: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149f5: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   149f9: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   149fd: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14a02: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14a06: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a0b: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14a0f: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14a13: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14a18: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14a1c: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a21: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14a25: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14a29: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14a2e: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14a32: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a37: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14a3b: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a3f: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14a45: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   14a4b: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14a51: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14a56: 48 83 c0 10                  	addq	$0x10, %rax
   14a5a: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14a60: 0f 85 6a ff ff ff            	jne	0x149d0 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x330>
   14a66: b8 0c 00 00 00               	movl	$0xc, %eax
   14a6b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a70: c5 fe 6f 44 c6 a0            	vmovdqu	-0x60(%rsi,%rax,8), %ymm0
   14a76: c5 fe 6f 4c c6 c0            	vmovdqu	-0x40(%rsi,%rax,8), %ymm1
   14a7c: c5 fe 6f 54 c6 e0            	vmovdqu	-0x20(%rsi,%rax,8), %ymm2
   14a82: c5 fe 6f 1c c6               	vmovdqu	(%rsi,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14a87: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14a8c: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14a90: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a95: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14a99: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14a9d: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14aa2: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14aa6: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14aab: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14aaf: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14ab3: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14ab8: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14abc: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ac1: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14ac5: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14ac9: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14ace: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14ad2: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ad7: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14adb: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14adf: c5 fe 7f 44 c6 a0            	vmovdqu	%ymm0, -0x60(%rsi,%rax,8)
   14ae5: c5 fe 7f 4c c6 c0            	vmovdqu	%ymm1, -0x40(%rsi,%rax,8)
   14aeb: c5 fe 7f 54 c6 e0            	vmovdqu	%ymm2, -0x20(%rsi,%rax,8)
   14af1: c5 fe 7f 1c c6               	vmovdqu	%ymm3, (%rsi,%rax,8)
   14af6: 48 83 c0 10                  	addq	$0x10, %rax
   14afa: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14b00: 0f 85 6a ff ff ff            	jne	0x14a70 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x3d0>
   14b06: 49 89 e3                     	movq	%rsp, %r11
   14b09: 49 81 eb 00 00 08 00         	subq	$0x80000, %r11          # imm = 0x80000
   14b10: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   14b17: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   14b1f: 4c 39 dc                     	cmpq	%r11, %rsp
   14b22: 75 ec                        	jne	0x14b10 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x470>
   14b24: 48 83 ec 18                  	subq	$0x18, %rsp
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   14b28: 48 8d 7c 24 18               	leaq	0x18(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:68
;     arg.finalize()
   14b2d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14b32: c5 f8 77                     	vzeroupper
   14b35: ff 15 1d 92 03 00            	callq	*0x3921d(%rip)          # 0x4dd58 <_GLOBAL_OFFSET_TABLE_+0x190>
   14b3b: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   14b3f: b8 3e 00 00 00               	movl	$0x3e, %eax
   14b44: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   14b48: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   14b4c: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   14b50: c5 fd d4 84 c4 28 fe ff ff   	vpaddq	-0x1d8(%rsp,%rax,8), %ymm0, %ymm0
   14b59: c5 f5 d4 8c c4 48 fe ff ff   	vpaddq	-0x1b8(%rsp,%rax,8), %ymm1, %ymm1
   14b62: c5 ed d4 94 c4 68 fe ff ff   	vpaddq	-0x198(%rsp,%rax,8), %ymm2, %ymm2
   14b6b: c5 e5 d4 9c c4 88 fe ff ff   	vpaddq	-0x178(%rsp,%rax,8), %ymm3, %ymm3
   14b74: c5 fd d4 84 c4 a8 fe ff ff   	vpaddq	-0x158(%rsp,%rax,8), %ymm0, %ymm0
   14b7d: c5 f5 d4 8c c4 c8 fe ff ff   	vpaddq	-0x138(%rsp,%rax,8), %ymm1, %ymm1
   14b86: c5 ed d4 94 c4 e8 fe ff ff   	vpaddq	-0x118(%rsp,%rax,8), %ymm2, %ymm2
   14b8f: c5 e5 d4 9c c4 08 ff ff ff   	vpaddq	-0xf8(%rsp,%rax,8), %ymm3, %ymm3
   14b98: c5 fd d4 84 c4 28 ff ff ff   	vpaddq	-0xd8(%rsp,%rax,8), %ymm0, %ymm0
   14ba1: c5 f5 d4 8c c4 48 ff ff ff   	vpaddq	-0xb8(%rsp,%rax,8), %ymm1, %ymm1
   14baa: c5 ed d4 94 c4 68 ff ff ff   	vpaddq	-0x98(%rsp,%rax,8), %ymm2, %ymm2
   14bb3: c5 e5 d4 5c c4 88            	vpaddq	-0x78(%rsp,%rax,8), %ymm3, %ymm3
   14bb9: c5 fd d4 44 c4 a8            	vpaddq	-0x58(%rsp,%rax,8), %ymm0, %ymm0
   14bbf: c5 f5 d4 4c c4 c8            	vpaddq	-0x38(%rsp,%rax,8), %ymm1, %ymm1
   14bc5: c5 ed d4 54 c4 e8            	vpaddq	-0x18(%rsp,%rax,8), %ymm2, %ymm2
   14bcb: c5 e5 d4 5c c4 08            	vpaddq	0x8(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   14bd1: 48 83 c0 40                  	addq	$0x40, %rax
   14bd5: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   14bdb: 0f 85 6f ff ff ff            	jne	0x14b50 <perf_case::chain::many_chain_refm::h3506ece423a3a7c0+0x4b0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   14be1: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14be5: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   14be9: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14bed: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   14bf3: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14bf7: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   14bfc: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c00: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:69
; }
   14c05: 48 81 c4 18 00 08 00         	addq	$0x80018, %rsp          # imm = 0x80018
   14c0c: c5 f8 77                     	vzeroupper
   14c0f: c3                           	retq
