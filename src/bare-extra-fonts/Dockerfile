FROM ghcr.io/typst/typst:latest AS typst

FROM debian:bookworm AS fonts-installer

WORKDIR /work
RUN apt-get update
RUN apt-get install -y wget tar zip bash

COPY ./scripts/download_fonts.sh .
RUN bash download_fonts.sh

FROM debian:bookworm-slim

COPY --from=typst /bin/typst /usr/local/bin/typst 
COPY --from=fonts-installer /fonts /usr/local/typst/fonts
COPY --from=fonts-installer /licenses /usr/local/typst/fonts/licenses

ENV TYPST_FONT_PATHS=/usr/local/typst/fonts
