#!/bin/bash

CONDA=$1
ENV=$2
VS=$3

cd $HOME
bash vim.sh
bash conda.sh $CONDA
bash docker.sh
bash pytorch.sh $ENV $VS
clear \
    && echo "All done!"

# Not working :|
