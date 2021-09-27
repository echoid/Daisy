#! /bin/bash

#SBATCH --job-name=Daisy
#SBATCH --time=0-12:00:00
#SBATCH --mail-user=youran@student.unimelb.edu.au
#SBATCH --mail-type=ALL

module purge
module load foss/2019b 
module load python/3.5.2


python Daisy/run.py Daisy/params/param-adult.json
