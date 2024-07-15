#!/bin/bash
set -ex
export CC=/usr/bin/clang-14
export CXX=/usr/bin/clang++-14
ldconfig
# Build neck project
mkdir -p build
cd build
CC=clang-14 CXX=clang++-14 cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release ..
ninja -j $(nproc)

# for recognizing the `libLLVM-12.so` 
ldconfig

# for avoiding memory issue while running phasar
ulimit -s 16777216