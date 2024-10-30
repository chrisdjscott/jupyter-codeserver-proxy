#!/bin/bash -ex

echo called with args: "${@}"

SIF_PATH=/opt/nesi/containers/code-server/code-server.sif
APPTAINER_MODULE=Apptainer/1.2.5

module purge
module load "${APPTAINER_MODULE}"

apptainer exec --writable-tmpfs --bind /etc/opt/slurm --bind /var/run/munge "${SIF_PATH}" "$@"
