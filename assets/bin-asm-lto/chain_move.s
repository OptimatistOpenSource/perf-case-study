DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
000000000004dd88 R_X86_64_GLOB_DAT        memcpy

00000000000146a0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef>:
; perf_case::chain::many_chain::he5fd9c9a3b3a10ef():
; /path/perf-case-study/crates/perf-case/src/chain.rs:48
; pub fn many_chain(arg: ChainState) -> u64 {
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
   14740: 0f 85 6a ff ff ff            	jne	0x146b0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x10>
   14746: 49 89 e3                     	movq	%rsp, %r11
   14749: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
   14750: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   14757: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   1475f: 4c 39 dc                     	cmpq	%r11, %rsp
   14762: 75 ec                        	jne	0x14750 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0xb0>
   14764: 48 83 ec 18                  	subq	$0x18, %rsp
   14768: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   1476d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14772: c5 f8 77                     	vzeroupper
   14775: ff 15 0d 96 03 00            	callq	*0x3960d(%rip)          # 0x4dd88 <_GLOBAL_OFFSET_TABLE_+0x190>
   1477b: b8 0c 00 00 00               	movl	$0xc, %eax
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14780: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14786: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   1478c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14792: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14798: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1479d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   147a1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147a6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   147aa: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   147ae: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   147b3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   147b7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147bc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   147c0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   147c4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   147c9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   147cd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147d2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   147d6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   147da: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   147df: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   147e3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147e8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   147ec: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   147f0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   147f6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   147fc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14802: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14808: 48 83 c0 10                  	addq	$0x10, %rax
   1480c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14812: 0f 85 68 ff ff ff            	jne	0x14780 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0xe0>
   14818: b8 0c 00 00 00               	movl	$0xc, %eax
   1481d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14820: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14826: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   1482c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14832: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14838: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1483d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14841: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14846: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   1484a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1484e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14853: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14857: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1485c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14860: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14864: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14869: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1486d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14872: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14876: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   1487a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1487f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14883: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14888: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1488c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14890: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14896: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   1489c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   148a2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   148a8: 48 83 c0 10                  	addq	$0x10, %rax
   148ac: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   148b2: 0f 85 68 ff ff ff            	jne	0x14820 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x180>
   148b8: b8 0c 00 00 00               	movl	$0xc, %eax
   148bd: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   148c0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   148c6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   148cc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   148d2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   148d8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   148dd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   148e1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148e6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   148ea: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   148ee: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   148f3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   148f7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148fc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14900: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14904: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14909: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1490d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14912: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14916: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   1491a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1491f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14923: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14928: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1492c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14930: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14936: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   1493c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14942: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14948: 48 83 c0 10                  	addq	$0x10, %rax
   1494c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14952: 0f 85 68 ff ff ff            	jne	0x148c0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x220>
   14958: b8 0c 00 00 00               	movl	$0xc, %eax
   1495d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14960: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14966: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   1496c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14972: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14978: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1497d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14981: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14986: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   1498a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1498e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14993: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14997: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1499c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   149a0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   149a4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   149a9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   149ad: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149b2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   149b6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   149ba: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   149bf: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   149c3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149c8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   149cc: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   149d0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   149d6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   149dc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   149e2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   149e8: 48 83 c0 10                  	addq	$0x10, %rax
   149ec: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   149f2: 0f 85 68 ff ff ff            	jne	0x14960 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x2c0>
   149f8: b8 0c 00 00 00               	movl	$0xc, %eax
   149fd: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a00: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14a06: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   14a0c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14a12: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14a18: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14a1d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14a21: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a26: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14a2a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14a2e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14a33: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14a37: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a3c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14a40: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14a44: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14a49: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14a4d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a52: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14a56: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14a5a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14a5f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14a63: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a68: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14a6c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a70: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14a76: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   14a7c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14a82: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14a88: 48 83 c0 10                  	addq	$0x10, %rax
   14a8c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14a92: 0f 85 68 ff ff ff            	jne	0x14a00 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x360>
   14a98: b8 0c 00 00 00               	movl	$0xc, %eax
   14a9d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14aa0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14aa6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   14aac: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14ab2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14ab8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14abd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14ac1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ac6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14aca: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14ace: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14ad3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14ad7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14adc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14ae0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14ae4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14ae9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14aed: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14af2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14af6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14afa: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14aff: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14b03: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14b08: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14b0c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14b10: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14b16: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   14b1c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14b22: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14b28: 48 83 c0 10                  	addq	$0x10, %rax
   14b2c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14b32: 0f 85 68 ff ff ff            	jne	0x14aa0 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x400>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   14b38: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
   14b40: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   14b45: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14b4a: c5 f8 77                     	vzeroupper
   14b4d: ff 15 35 92 03 00            	callq	*0x39235(%rip)          # 0x4dd88 <_GLOBAL_OFFSET_TABLE_+0x190>
   14b53: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   14b57: b8 3e 00 00 00               	movl	$0x3e, %eax
   14b5c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   14b60: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   14b64: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
   14b68: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   14b70: c5 fd d4 84 c4 28 fe 07 00   	vpaddq	0x7fe28(%rsp,%rax,8), %ymm0, %ymm0
   14b79: c5 f5 d4 8c c4 48 fe 07 00   	vpaddq	0x7fe48(%rsp,%rax,8), %ymm1, %ymm1
   14b82: c5 ed d4 94 c4 68 fe 07 00   	vpaddq	0x7fe68(%rsp,%rax,8), %ymm2, %ymm2
   14b8b: c5 e5 d4 9c c4 88 fe 07 00   	vpaddq	0x7fe88(%rsp,%rax,8), %ymm3, %ymm3
   14b94: c5 fd d4 84 c4 a8 fe 07 00   	vpaddq	0x7fea8(%rsp,%rax,8), %ymm0, %ymm0
   14b9d: c5 f5 d4 8c c4 c8 fe 07 00   	vpaddq	0x7fec8(%rsp,%rax,8), %ymm1, %ymm1
   14ba6: c5 ed d4 94 c4 e8 fe 07 00   	vpaddq	0x7fee8(%rsp,%rax,8), %ymm2, %ymm2
   14baf: c5 e5 d4 9c c4 08 ff 07 00   	vpaddq	0x7ff08(%rsp,%rax,8), %ymm3, %ymm3
   14bb8: c5 fd d4 84 c4 28 ff 07 00   	vpaddq	0x7ff28(%rsp,%rax,8), %ymm0, %ymm0
   14bc1: c5 f5 d4 8c c4 48 ff 07 00   	vpaddq	0x7ff48(%rsp,%rax,8), %ymm1, %ymm1
   14bca: c5 ed d4 94 c4 68 ff 07 00   	vpaddq	0x7ff68(%rsp,%rax,8), %ymm2, %ymm2
   14bd3: c5 e5 d4 9c c4 88 ff 07 00   	vpaddq	0x7ff88(%rsp,%rax,8), %ymm3, %ymm3
   14bdc: c5 fd d4 84 c4 a8 ff 07 00   	vpaddq	0x7ffa8(%rsp,%rax,8), %ymm0, %ymm0
   14be5: c5 f5 d4 8c c4 c8 ff 07 00   	vpaddq	0x7ffc8(%rsp,%rax,8), %ymm1, %ymm1
   14bee: c5 ed d4 94 c4 e8 ff 07 00   	vpaddq	0x7ffe8(%rsp,%rax,8), %ymm2, %ymm2
   14bf7: c5 e5 d4 9c c4 08 00 08 00   	vpaddq	0x80008(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   14c00: 48 83 c0 40                  	addq	$0x40, %rax
   14c04: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   14c0a: 0f 85 60 ff ff ff            	jne	0x14b70 <perf_case::chain::many_chain::he5fd9c9a3b3a10ef+0x4d0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   14c10: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c14: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   14c18: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c1c: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   14c22: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c26: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   14c2b: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c2f: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:57
; }
   14c34: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
   14c3b: c5 f8 77                     	vzeroupper
   14c3e: c3                           	retq
   14c3f: 00 55 48                     	addb	%dl, 0x48(%rbp)
