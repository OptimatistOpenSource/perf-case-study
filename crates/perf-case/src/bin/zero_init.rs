use std::hint::black_box;

use perf_case::zero_init::ZeroInit;

fn main() {
    let arr = black_box([1; 25]);
    let mut zero = black_box(ZeroInit::new());
    zero.assign(&arr);
    black_box(zero);
}
