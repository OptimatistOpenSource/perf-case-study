use perf_case::zero_init::init_it;

fn main() {
    let arr = [1; 25];
    dbg!(init_it(&arr));
}
