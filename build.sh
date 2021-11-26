#!/bin/bash
set -ex

# Build neck project
mkdir -p build
cd build
CC=clang CXX=clang++ cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release ..
ninja -j $(nproc)
