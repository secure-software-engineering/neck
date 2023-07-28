#!/bin/bash
set -ex

# Build neck project
mkdir -p build
cd build
CC=clang CXX=clang++ cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release ..
ninja -j $(nproc)

# for recognizing the `libLLVM-12.so` 
ldconfig

# for avoiding memory issue while running phasar
ulimit -s 16777216