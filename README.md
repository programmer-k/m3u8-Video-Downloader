# m3u8-Video-Downloader
m3u8 video downloader for "cdn.yonsei.ac.kr".

run.sh: basic m3u8 video downloader

run_aac.sh: basic m3u8 video downloader with aac codec

run_additional_id.sh: m3u8 video downloader for videos with additional id

Example URL: https://cdn.yonsei.ac.kr/yonsei/_definst_/mp4:yscecictl_yscec/"6_digit_id"/"video_filename"/playlist.m3u8

The basic usage is:

./run.sh "6_digit_id" "video_filename1" "video_filename2" "video_filename3" ...

If there is an error concerning audio codec, try to use run_aac.sh with the following command.

./run_aac.sh "6_digit_id" "video_filename1" "video_filename2" "video_filename3" ...


If the URL contains multiple IDs, please use run_additional_id.sh.

Example URL: https://cdn.yonsei.ac.kr/yonsei/_definst_/mp4:yscecictl_yscec/"6_digit_id"/"another_id"/"video_filename"/playlist.m3u8

./run_additional_id.sh "6_digit_id" "number_of_videos" "another_id_for_video_1" "video_1_filename" "another_id_for_video_2" "video_2_filename" ...
