#!/bin/bash

python3 getpixelvals.py $1 > ${1%.*}_rgb_values.txt
Rscript makeplot.r ${1%.*}_rgb_values.txt $2