#!/bin/bash -ex

echo called with args: "${@}"

SIF_PATH=/opt/nesi/containers/code-server/code-server.sif
APPTAINER_MODULE=Apptainer/1.2.5

module purge
module load "${APPTAINER_MODULE}"

NV_FLAG=""
if [ ! -z "$CUDA_VISIBLE_DEVICES" ]; then
    NV_FLAG="--nv"
    echo "adding --nv flag"
fi

apptainer exec --writable-tmpfs ${NV_FLAG} --bind /etc/opt/slurm --bind /var/run/munge "${SIF_PATH}" "$@"
