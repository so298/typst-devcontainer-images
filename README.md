# DevContainer Images for typst

## Image list

- `base`: Based on `mcr.microsoft.com/vscode/devcontainers/base:debian`, add typst binary.
- `extra-fonts`: Based on `base`, add extra fonts.
- `bare-extra-fonts`: Based on `debian:bookworm-slim`, add typst binary and extra fonts.

## Build images

At the root of this repository, run the following command to build images:

```bash
docker build -t typst-devcontainer:base -f src/base/Dockerfile .
docker build -t typst-devcontainer:extra-fonts -f src/extra-fonts/Dockerfile .
docker build -t typst-devcontainer:bare-extra-fonts -f src/bare-extra-fonts/Dockerfile .
```
