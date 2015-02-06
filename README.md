# Docker Fig

## Quick Start

```bash
alias fig="docker run --name fig --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $PWD:/src \
    cedvan/fig:latest"
```