#!/bin/bash

for file in *.svg
do
    echo "generate ${file}"
    cairosvg -f eps -o "${file%.*}.eps" "${file}"
done
