#!/bin/bash

# build
./build.sh

NECK_MINER_BUILD_PATH="build/tools/neck/neck"
TAINT_CONFIG_FILE="config/cmd-tool-config.json"
LL_FILE_PATH="$1"

# increase stack limit for this shell to allow for extensive phasar-based analyses
ulimit -s 1677721

${NECK_MINER_BUILD_PATH} -m $LL_FILE_PATH --taint-config $TAINT_CONFIG_FILE  --annotate --function-local-points-to-info-wo-globals --use-simplified-dfa

# detect neck
# for f in ${LL_FILE_PATH}/*.ll;
#     do echo "Processing $f file..";
#     ${NECK_MINER_BUILD_PATH} -m $f --taint-config $TAINT_CONFIG_FILE  --annotate
#     # dot -Tpng /tmp/Neck-Analysis-CFG\:main-6a2cd7.dot -o wc^Cng
# done