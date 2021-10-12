# Automated Neck Detection

Automated neck detection for LLVM's intermediate representation (LLVM IR).

## How to Build the Project?

### Prerequisites: 

Please perform the one-time check out of Git submodules before building the project:

```
$ git submodule init
$ git submodule update
```

The custom coreutils also need to be checked out correctly:

```
$ cd external/custom-coreutils/
$ git submodule init
$ git submodule update
```

On any non *nix env, use the VM's Vagrantfile provided as follows 

```
vagrant up
vagrant ssh-config
```

This will install a VM with all dependencies and pre-requisities.

If you wish to use your local *nix environment, run `build.sh`.

### LLVM IR

Next, the coreutils programs must be compiled to LLVM intermediate representation (LLVM IR):

```
$ cd external/custom-coreutils/
$ CC=wllvm configure --disable-nls CFLAGS="-g -O1 -Xclang -disable-llvm-passes -D__NO_STRING_INLINES  -D_FORTIFY_SOURCE=0 -U__OPTIMIZE__"
$ make
```

Build the actual project using (assuming you are in the project's root directory):

```
$ mkdir build
$ cd build/
$ CC=clang CXX=clang++ cmake ..
$ make
or 
$ cmake --build ./build --config Debug --target neck -j $nproc --
```

Delete the auto-generated files by deleting the `build` directory: `$ rm -rf build/`.

## Compiling a C/C++ Compilation Unit to LLVM IR

Use `$ clang++ -std=c++17 -Wall -Wextra -emit-llvm -S -fno-discard-value-names some-file.cpp` to compile the file `some-file.cpp` to LLVM IR.

## Running the Program and Analyzing LLVM IR

(Assuming you are in `build/`)

Use `$ tools/neck/neck --module some-file.ll` to run the small LLVM-IR-Analyzer program on the `some-file.ll` LLVM IR file.

Or use `$tools/neck/neck --module ../demo/wc.ll` to run the neck id algorithm on the readily set-up wc program.

## Running the Unit Tests

Once the project has been build, navigate into the `build` directory and run

```
$ ctest
```

to run all unit tests specified in this project.
