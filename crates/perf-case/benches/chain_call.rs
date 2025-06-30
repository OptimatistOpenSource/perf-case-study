use std::hint::black_box;

use criterion::{Criterion, criterion_group, criterion_main};
use perf_case::chain::{ChainState, many_chain, many_chain_refm};

fn bench_chain_call(c: &mut Criterion) {
    let mut group = c.benchmark_group("Chain call");

    group.bench_function("move", |b| {
        b.iter(|| {
            let arg = black_box(ChainState::new());
            let a = many_chain(arg);
            black_box(a)
        })
    });

    group.bench_function("refm", |b| {
        b.iter(|| {
            let arg = black_box(ChainState::new());
            let a = many_chain_refm(arg);
            black_box(a)
        })
    });
}

criterion_group!(benches, bench_chain_call);
criterion_main!(benches);
