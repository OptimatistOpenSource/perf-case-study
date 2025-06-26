use std::mem::MaybeUninit;

use rand::{Rng, SeedableRng};

pub fn random_array() -> [u64; 25] {
    let mut res = [0; 25];
    let mut rng = rand::rngs::StdRng::from_os_rng();
    rng.fill(&mut res);
    res
}

#[derive(Default, Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ZeroInit {
    state: [u64; 25],
    is_uninit: bool,
}

impl ZeroInit {
    // #[inline(never)]
    pub fn new() -> Self {
        Self {
            state: [0; 25],
            is_uninit: false,
        }
    }

    // #[inline(never)]
    #[expect(invalid_value, clippy::uninit_assumed_init)]
    pub fn new_uninit() -> Self {
        Self {
            state: unsafe { MaybeUninit::uninit().assume_init() },
            is_uninit: true,
        }
    }

    #[inline(never)]
    pub fn assign(&mut self, datas: &[u64; 25]) {
        self.state[..].copy_from_slice(datas);
    }
}
pub fn uninit_it(idx: usize) -> u64 {
    let a = ZeroInit::new();
    a.state[idx]
}
