# powerbox

Collect the most used tools in docker image.

## Get started

Tools:

- [ripgrep](https://github.com/BurntSushi/ripgrep): `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master rg ARGS`
- [bat](https://github.com/sharkdp/bat): `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master bat ARGS`
- [fd](https://github.com/sharkdp/fd): `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master fd ARGS`
- [jq](https://github.com/stedolan/jq): `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master jq ARGS`
- [broot](https://github.com/Canop/broot): `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master broot`

I add the following function in `~/.zshrc` to avoid unnecessary typings:

```sh
function d() {
    docker run -v ${PWD}:/app --network host ghcr.io/typefuture/powerbox:master $@
}
function dc() {
    docker run -v ${PWD}:/app --network host ghcr.io/typefuture/powerbox:master -c "$@"
}
```

There are two cases need to handle:

- only one command, run `d bat a.json`
- combine multiple commands, run `dc "bat a.json | jq ."`

## Develop

```sh
./hack/download.sh
docker build . -t typefuture/powerbox:VERSION
```
