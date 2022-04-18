# powerbox

Collect the most used tools in docker image.

## Get started

Tools:

- ripgrep: `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master rg ARGS`
- bat: `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master bat ARGS`
- fd: `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master fd ARGS`
- jq: `docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master jq ARGS`

I add the following function in `~/.zshrc` to avoid unnecessary typings:

```sh
function d() {
    docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master $@
}
function dc() {
    docker run -v ${PWD}:/app ghcr.io/typefuture/powerbox:master -c "$@"
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
