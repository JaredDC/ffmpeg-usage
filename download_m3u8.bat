@echo off

set M3U8_URL=https://streaming02.mrskincdn.com/mrskin_data/original_videos/000/000/003/644/nude-,lo,hi,hd,1080p,.mp4.cf/master.m3u8
set FILE_NAME=mrskin.mp4


ffmpeg -i %M3U8_URL% "%FILE_NAME%.mp4"

pause

:: ffmpeg.exe -i https://sy4.3sybf.com/20201018/6yjM0t7b/index.m3u8 D:\output.mp4