#!/bin/bash

for file in *.svg
do
    echo "generate ${file%.*}"
    inkscape -D "$file" -o "${file%.*}.pdf" --export-latex 2>/dev/null
done

echo "done"
