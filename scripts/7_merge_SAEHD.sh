#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" merge \
    --input-dir "$DFL_WORKSPACE/data_dst" \
    --output-dir "$DFL_WORKSPACE/data_dst/merged" \
    --output-mask-dir "$DFL_WORKSPACE/data_dst/merged_mask" \
    --aligned-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --model-dir "$DFL_WORKSPACE/model" \
    --model SAEHD
    
