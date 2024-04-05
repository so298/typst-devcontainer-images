FROM ghcr.io/typst/typst:latest AS typst

FROM mcr.microsoft.com/vscode/devcontainers/base:debian

COPY --from=typst /bin/typst /usr/local/bin/typst 
