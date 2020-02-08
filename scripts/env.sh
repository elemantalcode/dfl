export DFL_WORK_DIR=$( cd .. && pwd )
export DFL_PYTHON="python3.6"
export DFL_WORKSPACE="${DFL_WORK_DIR}/workspace/"

if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir -p "${DFL_WORKSPACE}/data_src"
    mkdir -p "${DFL_WORKSPACE}/data_src/aligned"
    mkdir -p "${DFL_WORKSPACE}/data_src/aligned_debug"
    mkdir -p "${DFL_WORKSPACE}/data_dst"
    mkdir -p "${DFL_WORKSPACE}/data_dst/aligned"
    mkdir -p "${DFL_WORKSPACE}/data_dst/aligned_debug"
    mkdir -p "${DFL_WORKSPACE}/model"
fi

export DFL_SRC="$DFL_WORK_DIR"

#echo DFL_WORKSPACE=$DFL_WORKSPACE
