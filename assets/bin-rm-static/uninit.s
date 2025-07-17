0000000000403bd0 <zero_uninit::main::hde429f12e10d981f>:
; zero_uninit::main::hde429f12e10d981f():
; /path/perf-case-study/crates/perf-case/src/bin/zero_uninit.rs:3
; fn main() {
  403bd0: 53                           	pushq	%rbx
  403bd1: 48 81 ec e0 01 00 00         	subq	$0x1e0, %rsp            # imm = 0x1E0
  403bd8: 0f 28 05 21 c4 03 00         	movaps	0x3c421(%rip), %xmm0    # 0x440000 <writev@GLIBC_2.2.5+0x440000>
  403bdf: 0f 11 44 24 60               	movups	%xmm0, 0x60(%rsp)
  403be4: 0f 11 44 24 50               	movups	%xmm0, 0x50(%rsp)
  403be9: 0f 11 84 24 80 00 00 00      	movups	%xmm0, 0x80(%rsp)
  403bf1: 0f 11 44 24 70               	movups	%xmm0, 0x70(%rsp)
  403bf6: 0f 11 84 24 a0 00 00 00      	movups	%xmm0, 0xa0(%rsp)
  403bfe: 0f 11 84 24 90 00 00 00      	movups	%xmm0, 0x90(%rsp)
  403c06: 0f 11 84 24 c0 00 00 00      	movups	%xmm0, 0xc0(%rsp)
  403c0e: 0f 11 84 24 b0 00 00 00      	movups	%xmm0, 0xb0(%rsp)
  403c16: 0f 11 84 24 e0 00 00 00      	movups	%xmm0, 0xe0(%rsp)
  403c1e: 0f 11 84 24 d0 00 00 00      	movups	%xmm0, 0xd0(%rsp)
  403c26: 0f 11 84 24 00 01 00 00      	movups	%xmm0, 0x100(%rsp)
  403c2e: 0f 11 84 24 f0 00 00 00      	movups	%xmm0, 0xf0(%rsp)
  403c36: 48 c7 84 24 10 01 00 00 01 00 00 00  	movq	$0x1, 0x110(%rsp)
  403c42: 48 8d 9c 24 18 01 00 00      	leaq	0x118(%rsp), %rbx
  403c4a: 48 8d 74 24 50               	leaq	0x50(%rsp), %rsi
; /path/perf-case-study/crates/perf-case/src/bin/zero_uninit.rs:5
;     dbg!(uninit_it(&arr));
  403c4f: 48 89 df                     	movq	%rbx, %rdi
  403c52: e8 e9 00 00 00               	callq	0x403d40 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>
  403c57: 48 89 5c 24 08               	movq	%rbx, 0x8(%rsp)
  403c5c: 48 8d 44 24 08               	leaq	0x8(%rsp), %rax
  403c61: 48 89 44 24 10               	movq	%rax, 0x10(%rsp)
  403c66: 48 c7 44 24 18 80 3b 40 00   	movq	$0x403b80, 0x18(%rsp)   # imm = 0x403B80
; /$HOME/.rustup/toolchains/1.88-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/fmt/rt.rs:278
;         Arguments { pieces, fmt: Some(fmt), args }
  403c6f: 48 c7 44 24 20 c8 04 44 00   	movq	$0x4404c8, 0x20(%rsp)   # imm = 0x4404C8
  403c78: 48 c7 44 24 28 02 00 00 00   	movq	$0x2, 0x28(%rsp)
  403c81: 48 c7 44 24 40 e8 04 44 00   	movq	$0x4404e8, 0x40(%rsp)   # imm = 0x4404E8
  403c8a: 48 c7 44 24 48 01 00 00 00   	movq	$0x1, 0x48(%rsp)
  403c93: 48 8d 44 24 10               	leaq	0x10(%rsp), %rax
  403c98: 48 89 44 24 30               	movq	%rax, 0x30(%rsp)
  403c9d: 48 c7 44 24 38 01 00 00 00   	movq	$0x1, 0x38(%rsp)
  403ca6: 48 8d 7c 24 20               	leaq	0x20(%rsp), %rdi
; /path/perf-case-study/crates/perf-case/src/bin/zero_uninit.rs:5
;     dbg!(uninit_it(&arr));
  403cab: e8 c0 c6 01 00               	callq	0x420370 <std::io::stdio::_eprint::h24e2b5fb5581b2f3>
; /path/perf-case-study/crates/perf-case/src/bin/zero_uninit.rs:6
; }
  403cb0: 48 81 c4 e0 01 00 00         	addq	$0x1e0, %rsp            # imm = 0x1E0
  403cb7: 5b                           	popq	%rbx
  403cb8: c3                           	retq
  403cb9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000403d40 <perf_case::zero_init::uninit_it::h1f640c62abb13c34>:
; perf_case::zero_init::uninit_it::h1f640c62abb13c34():
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:35
; pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
  403d40: 53                           	pushq	%rbx
  403d41: 48 89 fb                     	movq	%rdi, %rbx
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:23
;         update_data::assign(&mut self.state, data);
  403d44: e8 07 00 00 00               	callq	0x403d50 <update_data::assign::h61a8f40ca2fcc4f7>
; /path/perf-case-study/crates/perf-case/src/zero_init.rs:39
; }
  403d49: 48 89 d8                     	movq	%rbx, %rax
  403d4c: 5b                           	popq	%rbx
  403d4d: c3                           	retq
  403d4e: 66 90                        	nop
