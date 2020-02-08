#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" train \
    --training-data-src-dir "$DFL_WORKSPACE/data_src/aligned" \
    --training-data-dst-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --pretraining-data-dir "%INTERNAL%\pretrain_CelebA" \
    --pretrained-model-dir "%INTERNAL%\pretrain_Quick96" \
    --model-dir "$DFL_WORKSPACE/model" \
    --model Quick96

