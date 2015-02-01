# Docker Fig

## Quick Start

```bash
docker pull cedvan/fig:latest
docker run --name redis --rm \
    -v /usr/bin/docker:/bin/docker \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /path/to/project:/src \
    cedvan/fig:latest \
    (fig command)
```