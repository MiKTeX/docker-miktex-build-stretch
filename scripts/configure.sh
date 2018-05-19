#!/bin/sh
debian_revision=${1-stretch1}
cd /miktex/build
cmake \
    -DMIKTEX_PACKAGE_REVISION="${debian_revision}" \
    -DUSE_SYSTEM_HARFBUZZ=FALSE \
    -DUSE_SYSTEM_HARFBUZZ_ICU=FALSE \
    -DUSE_SYSTEM_POPPLER=FALSE \
    -DUSE_SYSTEM_POPPLER_QT5=FALSE \
    -DWITH_UI_QT=TRUE \
    /miktex/source
