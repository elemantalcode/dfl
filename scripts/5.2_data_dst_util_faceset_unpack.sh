#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" util \
    --input-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --unpack-faceset

