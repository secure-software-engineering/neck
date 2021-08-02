# Automated Neck Detection

Automated neck detection for LLVM's intermediate representation (LLVM IR).

## How to Build the Project?

Prerequisites: please perform the one-time check out of Git submodules before building the project:

```
$ git submodule init
$ git submodule update
```

Build the project using:

```
$ mkdir build
$ cd build/
$ CC=clang CXX=clang++ cmake ..
$ make
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
