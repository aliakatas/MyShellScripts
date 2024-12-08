#! /bin/bash

targetFolder=./Audio/
ftype=mp4    # could be mkv
resolution=192k

if [ ! -d "$targetFolder" ]; then
   mkdir -p $targetFolder
fi

for i in *.$ftype; do
    fname=$(basename "$i")
    fbname=${fname%.*}
    outName="$fbname".mp3

    ffmpeg -i "$fname" -b:a $resolution $targetFolder"$outName"
done