#!/usr/bin/env bash
i=1

for link in "${@}"
do
    ffmpeg -i "${link}" -vcodec copy -acodec copy "video${i}.mp4"
    ((i=i+1))
done