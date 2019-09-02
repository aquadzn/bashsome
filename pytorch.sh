#!/bin/bash

NAME=$1
VS=$2
conda create -y -n $NAME python=3.7
if [ $VS = cpu ]; then
    conda install -y -n $NAME pytorch torchvision cpuonly -c pytorch
elif [ $VS = gpu ]; then
    conda install -y  -n $NAME pytorch torchvision cudatoolkit=10.0 -c pytorch
fi
clear \
    && echo "You can now activate $NAME environment."
