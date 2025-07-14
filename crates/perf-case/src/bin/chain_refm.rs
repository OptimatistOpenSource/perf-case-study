use perf_case::chain::{ChainState, many_chain_refm};

fn main() {
    let state = ChainState::new();
    let a = many_chain_refm(state);
    dbg!(a);
}
