# SLASH: Static Configuration-Analysis for Automatic Program Decomposition

Automated boundary detection for LLVM's intermediate representation (LLVM IR).

## Build SLASH tool

### Prerequisites: 

Please update all Git submodules and install the pre-requisite packages (along with a copy of custom-compiled LLVM)

```
$ git submodule update --init --recursive
$ ./install.sh
$ ./build-llvm.sh
```

### Build
Build SLASH using `./build.sh` OR On any non *nix env, use the VM's Vagrantfile provided as follows. This will install a VM with all dependencies and pre-requisities.

```
vagrant up
vagrant ssh-config
vagrant ssh
```

The programs's LLVM intermediate representation (LLVM IR) are provided in `external/slash-dataset`.

## Using SLASH tool

Use `$ build/tools/neck/neck --module some-file.ll` to run the SLASH tool on the `some-file.ll` LLVM IR file.

## Tests

We have some tests defined in `test` and `unittests`

```
$ cd build
$ ctest OR ninja test
```
