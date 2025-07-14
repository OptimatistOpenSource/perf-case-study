use std::mem::MaybeUninit;

#[derive(Default, Clone, Copy, Debug)]
pub struct ZeroInit {
    state: [u64; 25],
}

impl ZeroInit {
    #[expect(invalid_value, clippy::uninit_assumed_init)]
    pub fn new_uninit() -> Self {
        Self {
            state: unsafe { MaybeUninit::uninit().assume_init() },
        }
    }

    // #[inline(never)]
    pub fn assign(&mut self, data: &[u64; 25]) {
        self.state[..].copy_from_slice(data);
    }

    // #[inline(never)]
    pub fn assign_3rd(&mut self, data: &[u64; 25]) {
        update_data::assign(&mut self.state, data);
    }
}

#[inline(never)]
pub fn init_it(data: &[u64; 25]) -> ZeroInit {
    let mut a = ZeroInit::default();

    a.assign_3rd(data);
    a
}

#[inline(never)]
pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
    let mut a = ZeroInit::new_uninit();
    a.assign_3rd(data);
    a
}
