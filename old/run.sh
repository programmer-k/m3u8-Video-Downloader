link_prefix="https://cdn.yonsei.ac.kr/yonsei/_definst_/mp4:yscecictl_yscec/"
link_suffix="/playlist.m3u8"
id=$1

for filename in "${@:2}"
do
	ffmpeg -i "${link_prefix}${id}/${filename}${link_suffix}" -vcodec copy -acodec copy ${filename}
done
