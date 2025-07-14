0000000000054a20 R_X86_64_RELATIVE        *ABS*+0x7d60
0000000000054c18 R_X86_64_GLOB_DAT        memcpy

0000000000007d50 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>:
; perf_case::zero_init::uninit_it::h1f640c62abb13c34():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:36
; pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
    7d50: 53                           	pushq	%rbx
    7d51: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
;         update_data::assign(&mut self.state, data);
    7d54: ff 15 c6 cc 04 00            	callq	*0x4ccc6(%rip)          # 0x54a20 <_GLOBAL_OFFSET_TABLE_+0x270>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:40
; }
    7d5a: 48 89 d8                     	movq	%rbx, %rax
    7d5d: 5b                           	popq	%rbx
    7d5e: c3                           	retq
    7d5f: 90                           	nop

0000000000007d60 <update_data::assign::h61a8f40ca2fcc4f7>:
; update_data::assign::h61a8f40ca2fcc4f7():
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs:3753
;     unsafe { copy_nonoverlapping(src, dst, count) }
    7d60: ba c8 00 00 00               	movl	$0xc8, %edx
    7d65: ff 25 ad ce 04 00            	jmpq	*0x4cead(%rip)          # 0x54c18 <_GLOBAL_OFFSET_TABLE_+0x468>
    7d6b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
