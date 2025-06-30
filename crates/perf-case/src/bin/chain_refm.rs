use std::hint::black_box;

use perf_case::chain::ChainState;

fn main() {
    let state = black_box(ChainState::new());
    let a = perf_case::chain::many_chain_refm(state);
    black_box(a);
}
