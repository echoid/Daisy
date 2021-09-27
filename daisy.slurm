#! /bin/bash

#SBATCH --job-name=Daisy
#SBATCH --time=0-12:00:00

module purge
module load foss/2019b 
module load python/3.7.4 


python Daisy/run.py Daisy/params/param-adult.json
