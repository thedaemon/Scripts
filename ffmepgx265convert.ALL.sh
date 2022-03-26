#!/bin/sh
for i in *.mp4; do
	ffmpeg -i "$i" -c:a copy -c:v libx265 "${i%.avi}".x265.mp4;
done

for i in *.avi; do
	ffmpeg -i "$i" -c:a copy -c:v libx265 "${i%.avi}".x265.mp4;
done

for i in *.mkv; do
	ffmpeg -i "$i" -c:a copy -c:v libx265 "${i%.avi}".x265.mp4;
done
