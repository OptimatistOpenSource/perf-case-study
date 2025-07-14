DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000055840 R_X86_64_RELATIVE        *ABS*+0x14a60

0000000000014900 <zero_init::main::hb695a53420fcf48d>:
; zero_init::main::hb695a53420fcf48d():
; /path/perf-case-study/crates/perf-case/src/bin/zero_init.rs:3
; fn main() {
   14900: 53                           	pushq	%rbx
   14901: 48 81 ec e0 01 00 00         	subq	$0x1e0, %rsp            # imm = 0x1E0
   14908: c4 e2 7d 19 05 1f 1f ff ff   	vbroadcastsd	-0xe0e1(%rip), %ymm0 # 0x6830
   14911: c5 fc 11 44 24 50            	vmovups	%ymm0, 0x50(%rsp)
   14917: c5 fc 11 44 24 70            	vmovups	%ymm0, 0x70(%rsp)
   1491d: c5 fc 11 84 24 90 00 00 00   	vmovups	%ymm0, 0x90(%rsp)
   14926: c5 fc 11 84 24 b0 00 00 00   	vmovups	%ymm0, 0xb0(%rsp)
   1492f: c5 fc 11 84 24 d0 00 00 00   	vmovups	%ymm0, 0xd0(%rsp)
   14938: c5 fc 11 84 24 f0 00 00 00   	vmovups	%ymm0, 0xf0(%rsp)
   14941: 48 c7 84 24 10 01 00 00 01 00 00 00  	movq	$0x1, 0x110(%rsp)
   1494d: 48 8d 9c 24 18 01 00 00      	leaq	0x118(%rsp), %rbx
   14955: 48 8d 74 24 50               	leaq	0x50(%rsp), %rsi
; /path/perf-case-study/crates/perf-case/src/bin/zero_init.rs:5
;     dbg!(init_it(&arr));
   1495a: 48 89 df                     	movq	%rbx, %rdi
   1495d: c5 f8 77                     	vzeroupper
   14960: ff 15 da 0e 04 00            	callq	*0x40eda(%rip)          # 0x55840 <_GLOBAL_OFFSET_TABLE_+0x40>
   14966: 48 89 5c 24 08               	movq	%rbx, 0x8(%rsp)
   1496b: 48 8d 44 24 08               	leaq	0x8(%rsp), %rax
   14970: 48 89 44 24 10               	movq	%rax, 0x10(%rsp)
   14975: 48 8d 05 f4 fe ff ff         	leaq	-0x10c(%rip), %rax      # 0x14870 <_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$::fmt::hdfd407f7ab03e887>
   1497c: 48 89 44 24 18               	movq	%rax, 0x18(%rsp)
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/fmt/rt.rs:278
;         Arguments { pieces, fmt: Some(fmt), args }
   14981: 48 8d 05 58 e6 03 00         	leaq	0x3e658(%rip), %rax     # 0x52fe0
   14988: 48 89 44 24 20               	movq	%rax, 0x20(%rsp)
   1498d: 48 c7 44 24 28 02 00 00 00   	movq	$0x2, 0x28(%rsp)
   14996: 48 8d 05 a3 1e ff ff         	leaq	-0xe15d(%rip), %rax     # 0x6840
   1499d: 48 89 44 24 40               	movq	%rax, 0x40(%rsp)
   149a2: 48 c7 44 24 48 01 00 00 00   	movq	$0x1, 0x48(%rsp)
   149ab: 48 8d 44 24 10               	leaq	0x10(%rsp), %rax
   149b0: 48 89 44 24 30               	movq	%rax, 0x30(%rsp)
   149b5: 48 c7 44 24 38 01 00 00 00   	movq	$0x1, 0x38(%rsp)
   149be: 48 8d 7c 24 20               	leaq	0x20(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/bin/zero_init.rs:5
;     dbg!(init_it(&arr));
   149c3: ff 15 07 10 04 00            	callq	*0x41007(%rip)          # 0x559d0 <_GLOBAL_OFFSET_TABLE_+0x1d0>
; /path/perf-case-study/crates/perf-case/src/bin/zero_init.rs:6
; }
   149c9: 48 81 c4 e0 01 00 00         	addq	$0x1e0, %rsp            # imm = 0x1E0
   149d0: 5b                           	popq	%rbx
   149d1: c3                           	retq
		...
   149de: 00 00                        	addb	%al, (%rax)

0000000000014a60 <perf_case::zero_init::uninit_it::h550f1e90574c123c>:
; perf_case::zero_init::uninit_it::h550f1e90574c123c():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
   14a60: 48 89 f8                     	movq	%rdi, %rax
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
   14a63: 48 8b 8e c0 00 00 00         	movq	0xc0(%rsi), %rcx
   14a6a: 48 89 8f c0 00 00 00         	movq	%rcx, 0xc0(%rdi)
   14a71: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
   14a79: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
   14a81: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
   14a89: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
   14a91: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
   14a95: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
   14a9a: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
   14a9f: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
   14aa4: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
   14aa9: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
   14aae: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
   14ab3: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
; }
   14ab7: c5 f8 77                     	vzeroupper
   14aba: c3                           	retq
   14abb: 00 00                        	addb	%al, (%rax)
   14abd: 00 00                        	addb	%al, (%rax)
   14abf: 00 55 48                     	addb	%dl, 0x48(%rbp)
