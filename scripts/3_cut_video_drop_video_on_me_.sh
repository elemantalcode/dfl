#!/usr/bin/env bash
source env.sh

$DFL_PYTHON "$DFL_SRC/main.py" videoed cut-video \
       --input-file $1

