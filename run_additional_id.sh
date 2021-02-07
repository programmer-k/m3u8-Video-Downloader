link_prefix="https://cdn.yonsei.ac.kr/yonsei/_definst_/mp4:yscecictl_yscec/"
link_suffix="/playlist.m3u8"

main_id=$1
num_sub_id=$2

for ((i=1;i<=num_sub_id;i++));
do
	sub_id=$((i * 2 + 1))
	filename=$(((i + 1) * 2))
	ffmpeg -i "${link_prefix}${main_id}/${!sub_id}/${!filename}${link_suffix}" -vcodec copy -acodec copy -absf aac_adtstoasc ${!filename}
done;

