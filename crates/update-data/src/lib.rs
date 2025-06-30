// #[inline(always)]
// #[inline(never)]
pub fn update(state: &mut [u64]) {
    for ele in state {
        *ele = ele.pow(2);
    }
}
