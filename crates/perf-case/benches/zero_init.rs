use std::hint::black_box;

use criterion::{Criterion, criterion_group, criterion_main};
use perf_case::zero_init;

fn bench_zero_init(c: &mut Criterion) {
    let arr = [0; 25];

    let mut group = c.benchmark_group("Zero");

    group.bench_with_input("init", &arr, |b, datas| {
        b.iter(|| {
            black_box(zero_init::init_it(datas));
        });
    });
    group.bench_with_input("uninit", &arr, |b, datas| {
        b.iter(|| {
            black_box(zero_init::uninit_it(datas));
        });
    });

    group.finish();
}

criterion_group!(benches, bench_zero_init);
criterion_main!(benches);
