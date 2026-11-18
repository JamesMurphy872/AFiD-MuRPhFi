#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --partition=genoa
#SBATCH --hint=nomultithread
# Set a time limit of one hour for the job
# MAKE SURE YOUR TIME LIMIT IN bou.in IS SMALLER THAN THIS!
#SBATCH --time=00:40:00
# Give the job a useful name
#SBATCH --job-name=afid_test
# Email yourself with updates
#SBATCH --mail-user=jm2746@cam.ac.uk
#SBATCH --mail-type=END,FAIL,TIME_LIMIT_90

# Load modules for MPI and other parallel libraries
module purge
module restore afid

# Finally, call afid, specifying a processor mesh size
# (this assumes afid can be found in your PATH)
srun afid 32 1