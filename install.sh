#!/bin/bash
set -ex

LLVM_VERSION=12

echo "Installing dependencies."

# Basics
sudo apt-get install -y build-essential gpg wget lsb-release software-properties-common

# CMake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ bionic main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
sudo apt-get update
# CMake and Ninja
sudo apt-get install -y cmake ninja-build

# Update GCC compiler for an up-to-date libstdc++ implementation
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y gcc-11 g++-11

# Enable dot processing and LLVM CFGs
sudo apt-get -y install graphviz

# PhASAR's dependencies
sudo apt-get install -y python3-pip sqlite3 libsqlite3-dev python3-venv libboost-all-dev
