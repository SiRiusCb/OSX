#!/bin/bash
#This script will decompress all files in the current directory, video to huffyuv and audio to PCM
#unsigned 8-bit and place the output #in an avi container to ease frame accurate editing.
for file in GOPR05*.MP4
do
# ffmpeg -i "$file" -r 24 -vf scale=1920:1080 "$file"-1080p.mp4
ffmpeg -i "$file" -r 24 "$file"-24fps.mp4
done
