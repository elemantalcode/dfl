#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" util \
    --input-dir $1 \
    --convert-png-to-jpg

