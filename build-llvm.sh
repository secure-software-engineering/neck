#!/bin/bash
set -ex

ROOTDIR=$(pwd)

# Install WLLVM
echo "Installing WLLVM"  \
    pip3 install -U wllvm

# Build and install LLVM
readonly llvm_version=${llvm_release##*-} # i.e. 10.0.0, if llvm_release is "llvmorg-10.0.0"
readonly llvm_major_rev=${llvm_version%%.*}  # i.e. 10, if llvm_release is "llvmorg-10.0.0"

function addLibraryPath {
   #libclang.so.<major rev> has been part of LLVM for a while, and we expect it to stick around -- so this should work for checking to make sure the library is available.
   if ! ldconfig -p |grep -q "libclang-${llvm_major_rev}.so"; then
       echo "libLLVM-${llvm_major_rev}.so not found in ldconfig. Trying to add it.";
       echo "${dest_dir}/lib" | sudo tee /etc/ld.so.conf.d/llvm-"${llvm_version}".conf > /dev/null
       sudo ldconfig
       ldconfig -p |grep -q libclang.so."${llvm_major_rev}" && echo "done." || echo "WARNING: Failed to add LLVM library path"
   fi
}

git clone https://github.com/llvm/llvm-project.git 
cd llvm-project/
git checkout llvmorg-14.0.6
mkdir -p build
cd build/
cmake -G "Ninja" -DLLVM_ENABLE_RUNTIMES='libcxx;libcxxabi;libunwind' -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;lld;compiler-rt' -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_EH=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_LINK_LLVM_DYLIB=ON -DLLVM_ENABLE_DUMP=ON -DLLVM_BUILD_EXAMPLES=Off -DLLVM_INCLUDE_EXAMPLES=Off -DLLVM_BUILD_TESTS=Off -DLLVM_INCLUDE_TESTS=Off -DPYTHON_EXECUTABLE="$(which python3)" ../llvm
ninja -j $(nproc)
ninja install

addLibraryPath
ldconfig

cd $ROOTDIR
