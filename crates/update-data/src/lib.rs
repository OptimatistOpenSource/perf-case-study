// #[inline(never)]
#[cfg_attr(feature = "inline", inline(always))]
pub fn update(state: &mut [u64]) {
    for ele in state {
        *ele = ele.pow(2);
    }
}

#[cfg_attr(feature = "inline", inline(always))]
pub fn assign(state: &mut [u64; 25], data: &[u64; 25]) {
    state.copy_from_slice(data);
}
