#!/bin/sh
export CMAKE_INSTALL_PREFIX=/usr
sh clean.sh
sh compile_release.sh
set -x
cd build && sudo make install

