#!/bin/bash
set -ex

LLVM_VERSION=12

ROOTDIR=$(pwd)

# make a venv
python3 -m venv neckid-venv

source $ROOTDIR/neckid-venv/bin/activate

echo "Installing WLLVM"  \
    pip3 install -U wllvm


git clone https://github.com/llvm/llvm-project.git 
cd llvm-project/
git checkout llvmorg-12.0.1
mkdir build
cd build/
cmake -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;libcxx;libcxxabi;libunwind;lld;compiler-rt;debuginfo-tests' -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_EH=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_LINK_LLVM_DYLIB=ON -DLLVM_ENABLE_DUMP=ON -DLLVM_BUILD_EXAMPLES=Off -DLLVM_INCLUDE_EXAMPLES=Off -DLLVM_BUILD_TESTS=Off -DLLVM_INCLUDE_TESTS=Off -DPYTHON_EXECUTABLE="$(which python3)" \ 
    -DCMAKE_INSTALL_PREFIX=$ROOTDIR/neckid-venv ../llvm
make -j $(nproc)
make install

cd $ROOTDIR

ulimit -s 1677721

mkdir -p build
pushd build
CC=clang-${LLVM_VERSION} \
CXX=clang++-${LLVM_VERSION} \
    cmake -G "Ninja" \
    -DLLVM_DIR=$ROOTDIR/neckid-venv/lib/cmake/llvm ..
make -j $(nproc)
popd

deactivate
