#!/bin/bash

LLVM_VERSION=12

sudo apt-get update

sudo apt-get install -y build-essential gpg wget

# CMake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ focal main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
sudo apt-get update

sudo rm /usr/share/keyrings/kitware-archive-keyring.gpg
sudo apt-get install -y cmake

# LLVM
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh ${LLVM_VERSION}

sudo apt-get -y install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python-clang libboost-all-dev gdb libclang-cpp${LLVM_VERSION}-dev

# for LLVM CFGs
sudo apt-get -y install graphviz

# for wllvm
sudo apt-get install -y python3-pip
pip install wllvm

echo "export PATH=~/.local/bin:$PATH" >> ~/.bashrc
echo "export LLVM_COMPILER=clang" >> ~/.bashrc

source ~/.bashrc

# for phasar
sudo apt-get install -y sqlite3 libsqlite3-dev

mkdir -p build
cd build
CC=clang-${LLVM_VERSION} CXX=clang++-${LLVM_VERSION} cmake ..
make -j $(nproc)
