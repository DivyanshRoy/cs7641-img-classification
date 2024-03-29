#!/bin/sh

source activate img-classifcation

EXP_NAME=resnet

flags="--model resnet \
       --data-aug \
       --optimiser adam \
       --learning-rate 0.001 \
       --lr-reducer \
       --epochs 40 \
       --batch-size 64 \
       --exp-name ${EXP_NAME} \
       --tensorboard \
       --filelogger "

unbuffer python train.py $flags | tee checkpoints/${EXP_NAME}.log
