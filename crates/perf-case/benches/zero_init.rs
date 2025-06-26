use std::hint::black_box;

use criterion::{Criterion, criterion_group, criterion_main};
use perf_case::zero_init::ZeroInit;

fn bench_zero_init(c: &mut Criterion) {
    // let arr = random_array();
    let arr = [0; 25];

    let mut group = c.benchmark_group("Zero");

    group.bench_with_input("init", &arr, |b, datas| {
        b.iter(|| {
            let mut zero_init = black_box(ZeroInit::new());
            zero_init.assign(datas);
            black_box(zero_init);
        });
    });
    group.bench_with_input("uninit", &arr, |b, datas| {
        b.iter(|| {
            let mut zero_init = black_box(ZeroInit::new_uninit());
            zero_init.assign(datas);
            black_box(zero_init);
        });
    });

    // group.bench_function("init", |b| {
    //     b.iter(|| {
    //         let mut zero_init = black_box(ZeroInit::new());
    //         zero_init.assign(&arr);
    //         black_box(zero_init);
    //     })
    // });
    // group.bench_function("uninit", |b| {
    //     b.iter(|| {
    //         let mut zero_init = black_box(ZeroInit::new_uninit());
    //         zero_init.assign(&arr);
    //         black_box(zero_init);
    //     })
    // });

    group.finish();
}

criterion_group!(benches, bench_zero_init);
criterion_main!(benches);
