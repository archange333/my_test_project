#!/bin/sh
mkdir -p debug
cd debug && cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} .. && make
