#~/bin/bash

for f in **/main.pdf
do
    IFS='/'
    read -a strarr <<< $f
    cp "./$f" "./${strarr[0]}.pdf"
done