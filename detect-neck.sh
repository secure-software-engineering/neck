#!/bin/bash

# build
./build.sh

NECK_MINER_BUILD_PATH="build/tools/neck/neck"
LL_FILE_PATH="demo"

# detect neck
for f in ${LL_FILE_PATH}/*.c; 
    do echo "Processing $f file..";
    ${NECK_MINER_BUILD_PATH} -m $f
    # dot -Tpng /tmp/Neck-Analysis-CFG\:main-6a2cd7.dot -o wc^Cng
done


