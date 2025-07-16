#!/usr/bin/env bash

export RUSTFLAGS="--emit=asm,llvm-ir,mir"
cargo clean
cargo b -r && mv target/release target/release-origin
cargo b -r --features inline && mv target/release target/release-inline

for NAME in {zero_init,zero_uninit,chain_move,chain_refm,perf_case,update_data}; do
    for IR in {mir,ll}; do
        if not diff ./target/release-origin/deps/"$NAME"-*."$IR" ./target/release-inline/deps/"$NAME"-*."$IR" >/dev/null; then
            echo ">>>> ""$NAME"."$IR"" <<<<"
        fi
    done
done
