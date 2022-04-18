#!/usr/bin/env bash

set -x

wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz \
    && tar -xzf ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz \
    && cp ripgrep-13.0.0-x86_64-unknown-linux-musl/rg ./opt/ \
    && rm -rf ripgrep-13.0.0-x86_64-unknown-linux-musl*

wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat-v0.20.0-x86_64-unknown-linux-musl.tar.gz \
    && tar -xzf bat-v0.20.0-x86_64-unknown-linux-musl.tar.gz \
    && cp bat-v0.20.0-x86_64-unknown-linux-musl/bat ./opt/ \
    && rm -rf bat-v0.20.0-x86_64-unknown-linux-musl*

wget https://github.com/sharkdp/fd/releases/download/v8.3.2/fd-v8.3.2-x86_64-unknown-linux-musl.tar.gz \
    && tar -xzf fd-v8.3.2-x86_64-unknown-linux-musl.tar.gz \
    && cp fd-v8.3.2-x86_64-unknown-linux-musl/fd ./opt/ \
    && rm -rf fd-v8.3.2-x86_64-unknown-linux-musl*

wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 \
    && cp jq-linux64 ./opt/jq \
    && chmod +x ./opt/jq \
    && rm -rf jq-linux64