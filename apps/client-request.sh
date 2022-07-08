#!/bin/bash

if [[ -z "$1" ]]; then
    URL="https://192.168.50.4:4433/index.html"
else
    URL="$1"
fi

RUST_LOG=trace cargo run --bin quiche-client -- --no-verify $URL --disable-hystart --no-grease --max-active-cids 1
