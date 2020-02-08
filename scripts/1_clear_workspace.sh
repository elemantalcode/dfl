#!/usr/bin/env bash
source env.sh
mkdir -p "$DFL_WORKSPACE" 
rm -rf "$DFL_WORKSPACE/data_src"  
mkdir -p "$DFL_WORKSPACE/data_src" 
mkdir -p "$DFL_WORKSPACE/data_src/aligned" 
rm -rf "$DFL_WORKSPACE/data_dst"  
mkdir -p "$DFL_WORKSPACE/data_dst" 
mkdir -p "$DFL_WORKSPACE/data_dst/aligned" 
rm -rf "$DFL_WORKSPACE/model"  
mkdir -p "$DFL_WORKSPACE/model" 
echo DONE
