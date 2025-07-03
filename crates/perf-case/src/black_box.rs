use std::{
    arch::asm,
    time::{Duration, Instant},
};

#[inline(always)]
fn push_cap(v: &mut Vec<i32>) {
    for i in 0..4 {
        v.push(i);
        std::hint::black_box(v.as_ptr());
    }
}

pub fn bench_push() -> Duration {
    let mut v = Vec::with_capacity(4);
    let now = Instant::now();
    push_cap(&mut v);
    now.elapsed()
}

pub fn black_box() {
    unsafe { asm!("", options(nostack, preserves_flags)) };
}

#[inline(always)]
fn push_cap_1(v: &mut Vec<i32>) {
    for i in 0..4 {
        v.push(i);
        black_box();
    }
}

pub fn bench_push_1() -> Duration {
    let mut v = Vec::with_capacity(4);
    let now = Instant::now();
    push_cap_1(&mut v);
    let t = now.elapsed();
    std::hint::black_box(v);
    t
}

pub fn bench_push_wrapper() -> Duration {
    let mut v = std::hint::black_box(Vec::with_capacity(4));
    let now = Instant::now();
    push_cap(&mut v);
    now.elapsed()
}

pub fn better_black_box(mut int_x: u64) -> u64 {
    unsafe { asm!("/* {x} */", x = inout(reg) int_x, options(nostack)) };
    int_x
}
