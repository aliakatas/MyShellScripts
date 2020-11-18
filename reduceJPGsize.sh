#! /bin/bash

n=$#;
if [ $n -eq 0 ]; then
    pct=50
    echo "Default to 50%"
else
    pct=$1
fi

for i in *.jpg; do
    fname=$(basename "$i")
    fbname=${fname%.*}
    outName="$fbname"_reduced.jpg
    echo Reducing "$i" to $pct% of the original size...
    convert -resize $pct% "$i" "$outName"
done
