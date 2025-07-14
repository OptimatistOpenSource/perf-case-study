DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000056140 R_X86_64_GLOB_DAT        memcpy

00000000000146c0 <perf_case::chain::many_chain::hba1e7798f4d6f899>:
; perf_case::chain::many_chain::hba1e7798f4d6f899():
; /path/perf-case-study/crates/perf-case/src/chain.rs:48
; pub fn many_chain(arg: ChainState) -> u64 {
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
   14760: 0f 85 6a ff ff ff            	jne	0x146d0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x10>
   14766: 49 89 e3                     	movq	%rsp, %r11
   14769: 49 81 eb 00 00 10 00         	subq	$0x100000, %r11         # imm = 0x100000
   14770: 48 81 ec 00 10 00 00         	subq	$0x1000, %rsp           # imm = 0x1000
   14777: 48 c7 04 24 00 00 00 00      	movq	$0x0, (%rsp)
   1477f: 4c 39 dc                     	cmpq	%r11, %rsp
   14782: 75 ec                        	jne	0x14770 <perf_case::chain::many_chain::hba1e7798f4d6f899+0xb0>
   14784: 48 83 ec 18                  	subq	$0x18, %rsp
   14788: 48 8d 7c 24 08               	leaq	0x8(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/chain.rs:23
;         self
   1478d: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14792: c5 f8 77                     	vzeroupper
   14795: ff 15 a5 19 04 00            	callq	*0x419a5(%rip)          # 0x56140 <_GLOBAL_OFFSET_TABLE_+0x7e0>
   1479b: b8 0c 00 00 00               	movl	$0xc, %eax
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   147a0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   147a6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   147ac: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   147b2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   147b8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   147bd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   147c1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147c6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   147ca: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   147ce: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   147d3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   147d7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147dc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   147e0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   147e4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   147e9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   147ed: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   147f2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   147f6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   147fa: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   147ff: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14803: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14808: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1480c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14810: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14816: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   1481c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14822: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14828: 48 83 c0 10                  	addq	$0x10, %rax
   1482c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14832: 0f 85 68 ff ff ff            	jne	0x147a0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0xe0>
   14838: b8 0c 00 00 00               	movl	$0xc, %eax
   1483d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14840: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14846: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   1484c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14852: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14858: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1485d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14861: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14866: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   1486a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1486e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14873: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14877: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1487c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14880: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14884: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14889: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1488d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14892: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14896: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   1489a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1489f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   148a3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   148a8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   148ac: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   148b0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   148b6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   148bc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   148c2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   148c8: 48 83 c0 10                  	addq	$0x10, %rax
   148cc: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   148d2: 0f 85 68 ff ff ff            	jne	0x14840 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x180>
   148d8: b8 0c 00 00 00               	movl	$0xc, %eax
   148dd: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   148e0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   148e6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   148ec: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   148f2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   148f8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   148fd: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14901: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14906: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   1490a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   1490e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14913: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14917: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   1491c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14920: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14924: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14929: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   1492d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14932: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14936: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   1493a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   1493f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14943: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14948: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   1494c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14950: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14956: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   1495c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14962: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14968: 48 83 c0 10                  	addq	$0x10, %rax
   1496c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14972: 0f 85 68 ff ff ff            	jne	0x148e0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x220>
   14978: b8 0c 00 00 00               	movl	$0xc, %eax
   1497d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14980: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14986: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   1498c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14992: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14998: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   1499d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   149a1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149a6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   149aa: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   149ae: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   149b3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   149b7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149bc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   149c0: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   149c4: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   149c9: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   149cd: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149d2: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   149d6: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   149da: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   149df: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   149e3: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   149e8: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   149ec: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   149f0: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   149f6: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   149fc: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14a02: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14a08: 48 83 c0 10                  	addq	$0x10, %rax
   14a0c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14a12: 0f 85 68 ff ff ff            	jne	0x14980 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x2c0>
   14a18: b8 0c 00 00 00               	movl	$0xc, %eax
   14a1d: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a20: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14a26: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   14a2c: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14a32: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14a38: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14a3d: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14a41: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a46: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14a4a: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14a4e: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14a53: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14a57: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a5c: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14a60: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14a64: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14a69: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14a6d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a72: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14a76: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14a7a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14a7f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14a83: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14a88: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14a8c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14a90: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14a96: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   14a9c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14aa2: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14aa8: 48 83 c0 10                  	addq	$0x10, %rax
   14aac: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14ab2: 0f 85 68 ff ff ff            	jne	0x14a20 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x360>
   14ab8: b8 0c 00 00 00               	movl	$0xc, %eax
   14abd: 0f 1f 00                     	nopl	(%rax)
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14ac0: c5 fe 6f 44 c4 a8            	vmovdqu	-0x58(%rsp,%rax,8), %ymm0
   14ac6: c5 fe 6f 4c c4 c8            	vmovdqu	-0x38(%rsp,%rax,8), %ymm1
   14acc: c5 fe 6f 54 c4 e8            	vmovdqu	-0x18(%rsp,%rax,8), %ymm2
   14ad2: c5 fe 6f 5c c4 08            	vmovdqu	0x8(%rsp,%rax,8), %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:3086
;                     base = base * base;
   14ad8: c5 dd 73 d0 20               	vpsrlq	$0x20, %ymm0, %ymm4
   14add: c5 fd f4 e4                  	vpmuludq	%ymm4, %ymm0, %ymm4
   14ae1: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14ae6: c5 fd f4 c0                  	vpmuludq	%ymm0, %ymm0, %ymm0
   14aea: c5 fd d4 c4                  	vpaddq	%ymm4, %ymm0, %ymm0
   14aee: c5 dd 73 d1 20               	vpsrlq	$0x20, %ymm1, %ymm4
   14af3: c5 f5 f4 e4                  	vpmuludq	%ymm4, %ymm1, %ymm4
   14af7: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14afc: c5 f5 f4 c9                  	vpmuludq	%ymm1, %ymm1, %ymm1
   14b00: c5 f5 d4 cc                  	vpaddq	%ymm4, %ymm1, %ymm1
   14b04: c5 dd 73 d2 20               	vpsrlq	$0x20, %ymm2, %ymm4
   14b09: c5 ed f4 e4                  	vpmuludq	%ymm4, %ymm2, %ymm4
   14b0d: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14b12: c5 ed f4 d2                  	vpmuludq	%ymm2, %ymm2, %ymm2
   14b16: c5 ed d4 d4                  	vpaddq	%ymm4, %ymm2, %ymm2
   14b1a: c5 dd 73 d3 20               	vpsrlq	$0x20, %ymm3, %ymm4
   14b1f: c5 e5 f4 e4                  	vpmuludq	%ymm4, %ymm3, %ymm4
   14b23: c5 dd 73 f4 21               	vpsllq	$0x21, %ymm4, %ymm4
   14b28: c5 e5 f4 db                  	vpmuludq	%ymm3, %ymm3, %ymm3
   14b2c: c5 e5 d4 dc                  	vpaddq	%ymm4, %ymm3, %ymm3
; /path/perf-case-study/crates/update-data/src/lib.rs:5
;         *ele = ele.pow(2);
   14b30: c5 fe 7f 44 c4 a8            	vmovdqu	%ymm0, -0x58(%rsp,%rax,8)
   14b36: c5 fe 7f 4c c4 c8            	vmovdqu	%ymm1, -0x38(%rsp,%rax,8)
   14b3c: c5 fe 7f 54 c4 e8            	vmovdqu	%ymm2, -0x18(%rsp,%rax,8)
   14b42: c5 fe 7f 5c c4 08            	vmovdqu	%ymm3, 0x8(%rsp,%rax,8)
   14b48: 48 83 c0 10                  	addq	$0x10, %rax
   14b4c: 48 3d 0c 00 01 00            	cmpq	$0x1000c, %rax          # imm = 0x1000C
   14b52: 0f 85 68 ff ff ff            	jne	0x14ac0 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x400>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/iter.rs:72
;         IntoIter { inner }
   14b58: 48 8d bc 24 18 00 08 00      	leaq	0x80018(%rsp), %rdi
   14b60: 48 8d 74 24 08               	leaq	0x8(%rsp), %rsi
   14b65: ba 00 00 08 00               	movl	$0x80000, %edx          # imm = 0x80000
   14b6a: c5 f8 77                     	vzeroupper
   14b6d: ff 15 cd 15 04 00            	callq	*0x415cd(%rip)          # 0x56140 <_GLOBAL_OFFSET_TABLE_+0x7e0>
   14b73: c5 f9 ef c0                  	vpxor	%xmm0, %xmm0, %xmm0
   14b77: b8 3e 00 00 00               	movl	$0x3e, %eax
   14b7c: c5 f1 ef c9                  	vpxor	%xmm1, %xmm1, %xmm1
   14b80: c5 e9 ef d2                  	vpxor	%xmm2, %xmm2, %xmm2
   14b84: c5 e1 ef db                  	vpxor	%xmm3, %xmm3, %xmm3
   14b88: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/accum.rs:53
;                     |a, b| a + b,
   14b90: c5 fd d4 84 c4 28 fe 07 00   	vpaddq	0x7fe28(%rsp,%rax,8), %ymm0, %ymm0
   14b99: c5 f5 d4 8c c4 48 fe 07 00   	vpaddq	0x7fe48(%rsp,%rax,8), %ymm1, %ymm1
   14ba2: c5 ed d4 94 c4 68 fe 07 00   	vpaddq	0x7fe68(%rsp,%rax,8), %ymm2, %ymm2
   14bab: c5 e5 d4 9c c4 88 fe 07 00   	vpaddq	0x7fe88(%rsp,%rax,8), %ymm3, %ymm3
   14bb4: c5 fd d4 84 c4 a8 fe 07 00   	vpaddq	0x7fea8(%rsp,%rax,8), %ymm0, %ymm0
   14bbd: c5 f5 d4 8c c4 c8 fe 07 00   	vpaddq	0x7fec8(%rsp,%rax,8), %ymm1, %ymm1
   14bc6: c5 ed d4 94 c4 e8 fe 07 00   	vpaddq	0x7fee8(%rsp,%rax,8), %ymm2, %ymm2
   14bcf: c5 e5 d4 9c c4 08 ff 07 00   	vpaddq	0x7ff08(%rsp,%rax,8), %ymm3, %ymm3
   14bd8: c5 fd d4 84 c4 28 ff 07 00   	vpaddq	0x7ff28(%rsp,%rax,8), %ymm0, %ymm0
   14be1: c5 f5 d4 8c c4 48 ff 07 00   	vpaddq	0x7ff48(%rsp,%rax,8), %ymm1, %ymm1
   14bea: c5 ed d4 94 c4 68 ff 07 00   	vpaddq	0x7ff68(%rsp,%rax,8), %ymm2, %ymm2
   14bf3: c5 e5 d4 9c c4 88 ff 07 00   	vpaddq	0x7ff88(%rsp,%rax,8), %ymm3, %ymm3
   14bfc: c5 fd d4 84 c4 a8 ff 07 00   	vpaddq	0x7ffa8(%rsp,%rax,8), %ymm0, %ymm0
   14c05: c5 f5 d4 8c c4 c8 ff 07 00   	vpaddq	0x7ffc8(%rsp,%rax,8), %ymm1, %ymm1
   14c0e: c5 ed d4 94 c4 e8 ff 07 00   	vpaddq	0x7ffe8(%rsp,%rax,8), %ymm2, %ymm2
   14c17: c5 e5 d4 9c c4 08 00 08 00   	vpaddq	0x80008(%rsp,%rax,8), %ymm3, %ymm3
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs:617
;                 intrinsics::unchecked_add(self, rhs)
   14c20: 48 83 c0 40                  	addq	$0x40, %rax
   14c24: 48 3d 3e 00 01 00            	cmpq	$0x1003e, %rax          # imm = 0x1003E
   14c2a: 0f 85 60 ff ff ff            	jne	0x14b90 <perf_case::chain::many_chain::hba1e7798f4d6f899+0x4d0>
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/index_range.rs:165
;         while self.start != self.end {
   14c30: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c34: c5 e5 d4 ca                  	vpaddq	%ymm2, %ymm3, %ymm1
   14c38: c5 f5 d4 c0                  	vpaddq	%ymm0, %ymm1, %ymm0
   14c3c: c4 e3 7d 39 c1 01            	vextracti128	$0x1, %ymm0, %xmm1
   14c42: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c46: c5 f9 70 c8 ee               	vpshufd	$0xee, %xmm0, %xmm1     # xmm1 = xmm0[2,3,2,3]
   14c4b: c5 f9 d4 c1                  	vpaddq	%xmm1, %xmm0, %xmm0
   14c4f: c4 e1 f9 7e c0               	vmovq	%xmm0, %rax
; /path/perf-case-study/crates/perf-case/src/chain.rs:57
; }
   14c54: 48 81 c4 18 00 10 00         	addq	$0x100018, %rsp         # imm = 0x100018
   14c5b: c5 f8 77                     	vzeroupper
   14c5e: c3                           	retq
   14c5f: 00 55 48                     	addb	%dl, 0x48(%rbp)
