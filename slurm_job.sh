#!/bin/bash

#SBATCH --job-name=tardis
#SBATCH --partition=modi_short

srun singularity exec ~/modi_images/hpc-notebook\_latest.sif ~/modi_mount/tardis/run_tardis.sh