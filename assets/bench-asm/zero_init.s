0000000000281de0 R_X86_64_RELATIVE        *ABS*+0x4e020
0000000000281eb8 R_X86_64_GLOB_DAT        memcpy

000000000004df80 <perf_case::zero_init::init_it::hea2e57095669a05f>:
; perf_case::zero_init::init_it::hea2e57095669a05f():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:28
; pub fn init_it(data: &[u64; 25]) -> ZeroInit {
   4df80: 41 56                        	pushq	%r14
   4df82: 53                           	pushq	%rbx
   4df83: 48 81 ec c8 00 00 00         	subq	$0xc8, %rsp
   4df8a: 48 89 fb                     	movq	%rdi, %rbx
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/array/mod.rs:477
;                 [$t::default(), $($ts::default()),*]
   4df8d: 0f 57 c0                     	xorps	%xmm0, %xmm0
   4df90: 0f 29 84 24 b0 00 00 00      	movaps	%xmm0, 0xb0(%rsp)
   4df98: 0f 29 84 24 a0 00 00 00      	movaps	%xmm0, 0xa0(%rsp)
   4dfa0: 0f 29 84 24 90 00 00 00      	movaps	%xmm0, 0x90(%rsp)
   4dfa8: 0f 29 84 24 80 00 00 00      	movaps	%xmm0, 0x80(%rsp)
   4dfb0: 0f 29 44 24 70               	movaps	%xmm0, 0x70(%rsp)
   4dfb5: 0f 29 44 24 60               	movaps	%xmm0, 0x60(%rsp)
   4dfba: 0f 29 44 24 50               	movaps	%xmm0, 0x50(%rsp)
   4dfbf: 0f 29 44 24 40               	movaps	%xmm0, 0x40(%rsp)
   4dfc4: 0f 29 44 24 30               	movaps	%xmm0, 0x30(%rsp)
   4dfc9: 0f 29 44 24 20               	movaps	%xmm0, 0x20(%rsp)
   4dfce: 0f 29 44 24 10               	movaps	%xmm0, 0x10(%rsp)
   4dfd3: 0f 29 04 24                  	movaps	%xmm0, (%rsp)
   4dfd7: 48 c7 84 24 c0 00 00 00 00 00 00 00  	movq	$0x0, 0xc0(%rsp)
   4dfe3: 49 89 e6                     	movq	%rsp, %r14
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
;         update_data::assign(&mut self.state, data);
   4dfe6: 4c 89 f7                     	movq	%r14, %rdi
   4dfe9: ff 15 f1 3d 23 00            	callq	*0x233df1(%rip)         # 0x281de0 <_GLOBAL_OFFSET_TABLE_+0x1b00>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:32
;     a
   4dfef: ba c8 00 00 00               	movl	$0xc8, %edx
   4dff4: 48 89 df                     	movq	%rbx, %rdi
   4dff7: 4c 89 f6                     	movq	%r14, %rsi
   4dffa: ff 15 b8 3e 23 00            	callq	*0x233eb8(%rip)         # 0x281eb8 <_GLOBAL_OFFSET_TABLE_+0x1bd8>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:33
; }
   4e000: 48 89 d8                     	movq	%rbx, %rax
   4e003: 48 81 c4 c8 00 00 00         	addq	$0xc8, %rsp
   4e00a: 5b                           	popq	%rbx
   4e00b: 41 5e                        	popq	%r14
   4e00d: c3                           	retq
   4e00e: 66 90                        	nop

000000000004e010 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>:
; perf_case::zero_init::uninit_it::h1f640c62abb13c34():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:36
; pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
   4e010: 53                           	pushq	%rbx
   4e011: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
;         update_data::assign(&mut self.state, data);
   4e014: ff 15 c6 3d 23 00            	callq	*0x233dc6(%rip)         # 0x281de0 <_GLOBAL_OFFSET_TABLE_+0x1b00>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
; }
   4e01a: 48 89 d8                     	movq	%rbx, %rax
   4e01d: 5b                           	popq	%rbx
   4e01e: c3                           	retq
   4e01f: 90                           	nop

000000000004e020 <update_data::assign::h61a8f40ca2fcc4f7>:
; update_data::assign::h61a8f40ca2fcc4f7():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
   4e020: ba c8 00 00 00               	movl	$0xc8, %edx
   4e025: ff 25 8d 3e 23 00            	jmpq	*0x233e8d(%rip)         # 0x281eb8 <_GLOBAL_OFFSET_TABLE_+0x1bd8>
   4e02b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
