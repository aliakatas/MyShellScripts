#! /bin/bash

targetFolder=./Audio/
ftype=mp4    # could be mkv

if [ ! -d "$targetFolder" ]; then
   mkdir $targetFolder
fi

for i in *.$ftype; do
    fname=$(basename "$i")
    fbname=${fname%.*}
    outName="$fbname".mp3

    ffmpeg -i "$fname" -b:a 160k $targetFolder"$outName"
done