use perf_case::chain::{ChainState, many_chain};

fn main() {
    let state = ChainState::new();
    let a = many_chain(state);
    dbg!(a);
}
