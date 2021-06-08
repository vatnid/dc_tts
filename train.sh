#!/bin/sh

#SBATCH --time=4-00:00:00
#SBATCH --gres=gpu:1

nvidia-smi

echo $CUDA_VISIBLE_DEVICES
source /home/s2122322/anaconda2/bin/activate
conda activate dctts
echo Conda environment dctts activated

python prepo.py
python train.py 1
python train.py 2
