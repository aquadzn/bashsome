#!/bin/bash

CONDA=$1
ENV=$2

source vim.sh && source docker.sh && source conda.sh $CONDA
clear
echo "All done!"
