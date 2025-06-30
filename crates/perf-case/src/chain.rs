const LENGTH: usize = 65536;

#[derive(Clone, Debug)]
pub struct ChainState {
    pub state: [u64; LENGTH],
}

impl Default for ChainState {
    fn default() -> Self {
        Self::new()
    }
}

impl ChainState {
    pub fn new() -> Self {
        Self { state: [0; LENGTH] }
    }

    pub fn chain(mut self) -> Self {
        self.update();
        self
    }

    pub fn chain_refm(&mut self) -> &mut Self {
        self.update();
        self
    }

    pub fn update(&mut self) {
        update_data::update(&mut self.state);
    }

    pub fn finalize(self) -> u64 {
        self.state.into_iter().sum()
    }
}

pub fn many_chain(arg: ChainState) -> u64 {
    arg.chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .chain()
        .finalize()
}

pub fn many_chain_refm(mut arg: ChainState) -> u64 {
    arg.chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm()
        .chain_refm();
    arg.finalize()
}
