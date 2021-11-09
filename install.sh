#!/bin/bash
set -ex

LLVM_VERSION=12

echo "Installing dependencies."

sudo apt-get install -y build-essential gpg wget lsb-release software-properties-common

# CMake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ bionic main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
sudo apt-get update

sudo apt-get install -y cmake ninja-build

# for LLVM CFGs
sudo apt-get -y install graphviz

# for phasar
sudo apt-get install -y python3-pip sqlite3 libsqlite3-dev python3-venv

# LLVM
wget https://apt.llvm.org/llvm.sh -O /tmp/llvm.sh
chmod +x /tmp/llvm.sh
sudo /tmp/llvm.sh ${LLVM_VERSION}

sudo apt-get -y install clang-format clang-tidy clang-tools clang libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm libboost-all-dev gdb libclang-cpp${LLVM_VERSION}-dev
