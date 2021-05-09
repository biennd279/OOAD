#!/bin/bash

for d in */
do
    cd $d
    latexmk -pdf main.tex -halt-on-error &>/dev/null
    if [ "$?" = "0" ]; then
        echo $d OK
    else
        echo $d Error
    fi
    cd ..
done