@echo off
set INPUT=2021-06-08-22-33-42
set SUFFIX=.mp4
set OUTPUT_720P=%INPUT%-720p%SUFFIX%
set OUTPUT_1080P=%INPUT%-1080p%SUFFIX%
set OUTPUT_1400K=%INPUT%-720p-1400k%SUFFIX%

del "%OUTPUT_720P%"
del "%OUTPUT_1080P%"
del "%OUTPUT_1400K%"


REM ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:720  "%OUTPUT_720P%"
ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:1080 "%OUTPUT_1080P%"
REM ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:720 -b:v 1400k "%OUTPUT_1400K%"
