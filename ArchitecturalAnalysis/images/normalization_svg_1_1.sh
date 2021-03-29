#!/bin/bash

for file in *.svg
do
    cairosvg "${file}" -f svg -o "${file}"
done
