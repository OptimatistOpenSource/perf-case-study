use std::mem::MaybeUninit;

#[derive(Default, Clone, Copy, Debug)]
pub struct ZeroInit {
    state: [u64; 25],
}

impl ZeroInit {
    pub fn new() -> Self {
        Self { state: [0; 25] }
    }

    #[expect(invalid_value, clippy::uninit_assumed_init)]
    pub fn new_uninit() -> Self {
        Self {
            state: unsafe { MaybeUninit::uninit().assume_init() },
        }
    }

    #[inline(never)]
    pub fn assign(&mut self, data: &[u64; 25]) {
        self.state[..].copy_from_slice(data);
    }
}

pub fn init_it(data: &[u64; 25]) -> ZeroInit {
    // let mut a = std::hint::black_box(ZeroInit::new());
    let mut a = ZeroInit::new();
    crate::black_box::better_black_box(a.state.as_ptr() as u64);

    a.assign(data);
    a
}

pub fn uninit_it(data: &[u64; 25]) -> ZeroInit {
    // let mut a = std::hint::black_box(ZeroInit::new_uninit());
    let mut a = ZeroInit::new_uninit();
    crate::black_box::better_black_box(a.state.as_ptr() as u64);
    a.assign(data);
    a
}
