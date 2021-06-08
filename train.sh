#!/bin/sh

#SBATCH --time=08:00:00
#SBATCH --gres=gpu:1

nvidia-smi

echo $CUDA_VISIBLE_DEVICES
source /home/s2122322/anaconda2/bin/activate
conda activate dctts
echo Conda environment dctts activated

python2 prepo.py
python2 train.py 1
python2 train.py 2
