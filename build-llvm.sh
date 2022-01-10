#!/bin/bash
set -ex

ROOTDIR=$(pwd)

# Install WLLVM
echo "Installing WLLVM"  \
    pip3 install -U wllvm

# Build and install LLVM
git clone https://github.com/llvm/llvm-project.git 
cd llvm-project/
git checkout llvmorg-12.0.1
mkdir -p build
cd build/
cmake -G "Ninja" -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;lld;compiler-rt;debuginfo-tests' -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_EH=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_LINK_LLVM_DYLIB=ON -DLLVM_ENABLE_DUMP=ON -DLLVM_BUILD_EXAMPLES=Off -DLLVM_INCLUDE_EXAMPLES=Off -DLLVM_BUILD_TESTS=Off -DLLVM_INCLUDE_TESTS=Off -DPYTHON_EXECUTABLE="$(which python3)" ../llvm
ninja -j $(nproc)
ninja install

cd $ROOTDIR
