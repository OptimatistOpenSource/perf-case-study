use perf_case::zero_init::uninit_it;

fn main() {
    let arr = [1; 25];
    dbg!(uninit_it(&arr));
}
