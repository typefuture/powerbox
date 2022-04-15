#!/usr/bin/env bash

set -x

wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz \
    && tar -xzf ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz \
    && cp ripgrep-13.0.0-x86_64-unknown-linux-musl/rg ./opt/ \
    && rm -rf ripgrep-13.0.0-x86_64-unknown-linux-musl*