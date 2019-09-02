#!/bin/bash

NAME=$1
VS=$2
conda create -n $NAME python=3.7 -y
if [ $VS = cpu ]; then
    conda install -n $NAME -y pytorch torchvision cpuonly -c pytorch
elif [ $VS = gpu ]; then
    conda install -n $NAME -y pytorch torchvision cudatoolkit=10.0 -c pytorch
fi
clear \
    && echo "You can now activate $NAME environment."
cd -
