#!/usr/bin/env bash
source env.sh

mkdir -p "$DFL_WORKSPACE/data_dst" 

$DFL_PYTHON "$DFL_SRC/main.py" videoed extract-video \
    --input-file "$DFL_WORKSPACE/data_dst.*" \
    --output-dir "$DFL_WORKSPACE/data_dst" \
    --fps 0

