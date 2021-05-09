#!/bin/bash

for d in */
do
    echo $d
    cd $d
    latexmk -pdf main.tex 2>>err.txt
    cd ..
done