#!/bin/bash

set -euo pipefail

mkdir -p /work
mkdir -p /fonts
mkdir -p /licenses
cd /work

# Download fonts

## Harano Aji Fonts
HARANOAJI_VER="20231009"
wget https://github.com/trueroad/HaranoAjiFonts/archive/refs/tags/${HARANOAJI_VER}.tar.gz
tar xvf ${HARANOAJI_VER}.tar.gz
mv HaranoAjiFonts-${HARANOAJI_VER}/*.otf /fonts
mv HaranoAjiFonts-${HARANOAJI_VER}/LICENSE /licenses/LICENSE-HaranoAjiFonts.txt

## Open Sans
OPEN_SANS_COMMIT="bd7e37632246368c60fdcbd374dbf9bad11969b6"
wget https://github.com/googlefonts/opensans/archive/${OPEN_SANS_COMMIT}.zip
unzip ${OPEN_SANS_COMMIT}.zip
mv opensans-${OPEN_SANS_COMMIT}/fonts/ttf/*.ttf /fonts
mv opensans-${OPEN_SANS_COMMIT}/OFL.txt /licenses/LICENSE-OpenSans.txt

## IBM Plex
PLEX_VER="v6.4.0"
wget https://github.com/IBM/plex/releases/download/${PLEX_VER}/OpenType.zip
unzip OpenType.zip
# IBM-Plex-Mono
mv OpenType/IBM-Plex-Mono/*.otf /fonts
mv OpenType/IBM-Plex-Mono/license.txt /licenses/LICENSE-IBM-Plex-Mono.txt
# IBM-Plex-Sans-JP
mv OpenType/IBM-Plex-Sans-JP/hinted/*.otf /fonts
mv OpenType/IBM-Plex-Sans-JP/hinted/license.txt /licenses/LICENSE-IBM-Plex-Sans-JP.txt
# IBM-Plex-Sans
mv OpenType/IBM-Plex-Sans/*.otf /fonts
mv OpenType/IBM-Plex-Sans/license.txt /licenses/LICENSE-IBM-Plex-Sans.txt
# IBM-Plex-Serif
mv OpenType/IBM-Plex-Serif/*.otf /fonts
mv OpenType/IBM-Plex-Serif/license.txt /licenses/LICENSE-IBM-Plex-Serif.txt

