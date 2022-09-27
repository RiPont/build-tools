#!/bin/bash -e

INSTALL_DIR=$1
ROOT_DIR=$2
PROFILE=$4

cd ${ROOT_DIR}/icu/icu4c/source
./runConfigureICU --enable-debug Linux/gcc
make -j8
make install prefix="${INSTALL_DIR}"

cd "${INSTALL_DIR}"
rm -rf bin
rm -rf lib/icu
rm -rf lib/pkgconfig
rm -rf sbin
rm -rf share
cd lib
rm -f libicuio* libicutest* libicutu*
