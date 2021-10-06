#! /bin/bash

#SBATCH -p deeplearn
#SBATCH -q gpgpudeeplearn
#SBATCH --gres=gpu:1
#SBATCH --job-name=Daisy
#SBATCH --time=48:00:00
#SBATCH --mail-user=youran@student.unimelb.edu.au
#SBATCH --mail-type=ALL

module purge
module load fosscuda/2019b
module load python/3.7.4
source ~/virtualenv/python3.7.1/bin/activate

pip install pandas

cd ~/Daisy

python Daisy/run.py Daisy/params/param-adult.json 
