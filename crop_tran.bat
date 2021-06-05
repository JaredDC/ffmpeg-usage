@echo off
 
set INPUT="D:\jared\Videos\VideoRecords\在吗回复一下我好吗.mp4"
::del %INPUT% 
::exit

set OUTPUT_FINAL=""

set INPUT_PIC="D:\jared\Videos\VideoRecords\1120.png"
del %INPUT_PIC%

::ffmpeg -i %INPUT% -ss 00:00:40.00 -vframes 1 %INPUT_PIC%
::exit

set FILE_NAME=在吗-回复一下我好吗
set FILE_SUFFIX=.m4v

set OUTPUT="D:\jared\Videos\VideoRecords\%FILE_NAME%%FILE_SUFFIX%"
del %OUTPUT%

set START="00:00:0"
set STOP="00:0:4.30"
::54 46

REM CROP
REM ffmpeg -i %INPUT% -vcodec libx264 -strict -2 -vf crop=1920:800:0:0 %OUTPUT%
REM ffmpeg -i %INPUT% -vcodec libx264 %OUTPUT%
REM exit
::-ss %START%
ffmpeg  -ss %START% -to %STOP%  -i %INPUT% %OUTPUT%
EXIT
ffmpeg -ss %START%  -to %STOP%  -accurate_seek -i %INPUT% -codec copy -avoid_negative_ts 1  %OUTPUT%

::ffmpeg -ss 00:9:58  -t  00:00:28 -accurate_seek -i %INPUT% -vcodec libx264 -avoid_negative_ts 1  -strict -2 -vf crop=1278:690:6:6 %OUTPUT%


::ffmpeg -ss 00:9:58  -to 00:10:48 -accurate_seek -i %INPUT% -codec copy -avoid_negative_ts 1  %OUTPUT%

::ffmpeg -ss 00:9:58  -t  00:00:28 -accurate_seek -i %INPUT% -codec copy -avoid_negative_ts 1  %OUTPUT%
REM ffmpeg -ss 00:00:00 -t  00:00:07  -i %OUTPUT% -vcodec libx264  %OUTPUT_FINAL%

REM ffmpeg -ss 00:2:20  -to 00:8:07 -c:v libx264 -c:a aac -strict experimental -b:a 98k %OUTPUT%
::pause