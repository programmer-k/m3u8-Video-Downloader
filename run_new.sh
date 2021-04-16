id=$1

ffmpeg -i "${id}" -vcodec copy -acodec copy "video.mp4"
