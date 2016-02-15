#!/bin/sh
#SBATCH --job-name=ddg
#SBATCH --output=log.txt 

/share/work/rosetta/source/bin/ddg_monomer.linuxgccrelease @flags $( sed -n "$SLURM_ARRAY_TASK_ID p" list )
