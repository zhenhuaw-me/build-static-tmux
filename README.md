# Build static tmux from scratch

This repo fixes bugs in the upsteam and support tmux 3.5a.

## Dependency

* musl
* ncurses
* libevent

## Build

```
# Download
git clone https://github.com/zhenhuaw-me/build-static-tmux.git && cd build-static-tmux

# Build and start the container
docker build -t build_tmux -f Dockerfile .
docker run -it --name build_tmux build_tmux bash

# (In container) Build tmux and the dependency
bash ./build.sh

# (On host) copy the built binary
docker cp build_tmux:/root/tmux-static/bin/tmux.linux-amd64.stripped.gz ./
gunzip tmux.linux-amd64.stripped.gz
```
