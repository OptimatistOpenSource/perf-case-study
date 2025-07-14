DYNAMIC RELOCATION RECORDS
OFFSET           TYPE                     VALUE
0000000000055978 R_X86_64_RELATIVE        *ABS*+0x14b90

0000000000014ad0 <perf_case::zero_init::init_it::hea2e57095669a05f>:
; perf_case::zero_init::init_it::hea2e57095669a05f():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
   14ad0: 53                           	pushq	%rbx
   14ad1: 48 81 ec d0 00 00 00         	subq	$0xd0, %rsp
   14ad8: 48 89 fb                     	movq	%rdi, %rbx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/mod.rs:477
;                 [$t::default(), $($ts::default()),*]
   14adb: c5 f8 57 c0                  	vxorps	%xmm0, %xmm0, %xmm0
   14adf: c5 fc 11 84 24 a0 00 00 00   	vmovups	%ymm0, 0xa0(%rsp)
   14ae8: c5 fc 11 84 24 80 00 00 00   	vmovups	%ymm0, 0x80(%rsp)
   14af1: c5 fc 11 44 24 60            	vmovups	%ymm0, 0x60(%rsp)
   14af7: c5 fc 11 44 24 40            	vmovups	%ymm0, 0x40(%rsp)
   14afd: c5 fc 11 44 24 20            	vmovups	%ymm0, 0x20(%rsp)
   14b03: c5 fc 11 04 24               	vmovups	%ymm0, (%rsp)
   14b08: 48 c7 84 24 c0 00 00 00 00 00 00 00  	movq	$0x0, 0xc0(%rsp)
   14b14: 48 89 e7                     	movq	%rsp, %rdi
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
;         update_data::assign(&mut self.state, data);
   14b17: c5 f8 77                     	vzeroupper
   14b1a: ff 15 58 0e 04 00            	callq	*0x40e58(%rip)          # 0x55978 <_GLOBAL_OFFSET_TABLE_+0x48>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:32
;     a
   14b20: 48 8b 84 24 c0 00 00 00      	movq	0xc0(%rsp), %rax
   14b28: 48 89 83 c0 00 00 00         	movq	%rax, 0xc0(%rbx)
   14b2f: c5 fc 10 84 24 a0 00 00 00   	vmovups	0xa0(%rsp), %ymm0
   14b38: c5 fc 11 83 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rbx)
   14b40: c5 fc 10 84 24 80 00 00 00   	vmovups	0x80(%rsp), %ymm0
   14b49: c5 fc 11 83 80 00 00 00      	vmovups	%ymm0, 0x80(%rbx)
   14b51: c5 fc 10 04 24               	vmovups	(%rsp), %ymm0
   14b56: c5 fc 10 4c 24 20            	vmovups	0x20(%rsp), %ymm1
   14b5c: c5 fc 10 54 24 40            	vmovups	0x40(%rsp), %ymm2
   14b62: c5 fc 10 5c 24 60            	vmovups	0x60(%rsp), %ymm3
   14b68: c5 fc 11 5b 60               	vmovups	%ymm3, 0x60(%rbx)
   14b6d: c5 fc 11 53 40               	vmovups	%ymm2, 0x40(%rbx)
   14b72: c5 fc 11 4b 20               	vmovups	%ymm1, 0x20(%rbx)
   14b77: c5 fc 11 03                  	vmovups	%ymm0, (%rbx)
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
; }
   14b7b: 48 89 d8                     	movq	%rbx, %rax
   14b7e: 48 81 c4 d0 00 00 00         	addq	$0xd0, %rsp
   14b85: 5b                           	popq	%rbx
   14b86: c5 f8 77                     	vzeroupper
   14b89: c3                           	retq
   14b8a: 00 00                        	addb	%al, (%rax)
   14b8c: 00 00                        	addb	%al, (%rax)
   14b8e: 00 00                        	addb	%al, (%rax)

0000000000014b90 <update_data::assign::h61a8f40ca2fcc4f7>:
; update_data::assign::h61a8f40ca2fcc4f7():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
   14b90: 48 8b 86 c0 00 00 00         	movq	0xc0(%rsi), %rax
   14b97: 48 89 87 c0 00 00 00         	movq	%rax, 0xc0(%rdi)
   14b9e: c5 fc 10 86 a0 00 00 00      	vmovups	0xa0(%rsi), %ymm0
   14ba6: c5 fc 11 87 a0 00 00 00      	vmovups	%ymm0, 0xa0(%rdi)
   14bae: c5 fc 10 86 80 00 00 00      	vmovups	0x80(%rsi), %ymm0
   14bb6: c5 fc 11 87 80 00 00 00      	vmovups	%ymm0, 0x80(%rdi)
   14bbe: c5 fc 10 06                  	vmovups	(%rsi), %ymm0
   14bc2: c5 fc 10 4e 20               	vmovups	0x20(%rsi), %ymm1
   14bc7: c5 fc 10 56 40               	vmovups	0x40(%rsi), %ymm2
   14bcc: c5 fc 10 5e 60               	vmovups	0x60(%rsi), %ymm3
   14bd1: c5 fc 11 5f 60               	vmovups	%ymm3, 0x60(%rdi)
   14bd6: c5 fc 11 57 40               	vmovups	%ymm2, 0x40(%rdi)
   14bdb: c5 fc 11 4f 20               	vmovups	%ymm1, 0x20(%rdi)
   14be0: c5 fc 11 07                  	vmovups	%ymm0, (%rdi)
; /path/perf-case-study/crates/update-data/src/lib.rs:12
; }
   14be4: c5 f8 77                     	vzeroupper
   14be7: c3                           	retq
		...
