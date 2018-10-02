#!/bin/bash
for file in GOPR0*.MP4
do
# ffmpeg -i "$file" -r 24 -vf scale=1920:1080 "$file"-1080p.mp4
ffmpeg -i "$file" -r 24 "$file"-24fps.mp4
done
