#! /bin/bash

#SBATCH -p deeplearn
#SBATCH -q gpgpudeeplearn
#SBATCH --gres=gpu:1
#SBATCH --job-name=Daisy
#SBATCH --time=48:00:00
#SBATCH --mail-user=youran@student.unimelb.edu.au
#SBATCH --mail-type=ALL


module load fosscuda/2019b 
module load python/3.7.4 
module load scipy-bundle/2019.10-python-3.7.4
module load scipy-bundle/2019.10-python-3.7.4
module load scikit-learn/0.23.1-python-3.7.4
module load torchvision/0.5.0-python-3.7.4

python Daisy/run.py Daisy/params/adult/adult-LGAN-c.json

