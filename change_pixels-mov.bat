@echo off

for %%a in (*.MOV) do (ffmpeg -i "%%~a" -r 25 "%%~na-FR25.MP4")


set INPUT=2020_11_18_08_58_IMG_0543
set SUFFIX=.MP4
set OUTPUT_720P=%INPUT%-720p%SUFFIX%
set OUTPUT_1080P=%INPUT%-1080p%SUFFIX%
set OUTPUT_1400K=%INPUT%-720p-1400k%SUFFIX%

set OUTPUT_MAX1500K=%INPUT%-1500k%SUFFIX%
set OUTPUT_FR25=%INPUT%-FR25%SUFFIX%

rem del "%OUTPUT_720P%"
rem del "%OUTPUT_1080P%"
rem del "%OUTPUT_1400K%"
rem del "%OUTPUT_MAX1500K%"
rem del "%OUTPUT_FR25%"


REM ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:720  "%OUTPUT_720P%"
REM ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:1080 "%OUTPUT_1080P%"
REM ffmpeg -i "%INPUT%%SUFFIX%" -maxrate 1500k "%OUTPUT_MAX1500K%"
REM ffmpeg -i "%INPUT%%SUFFIX%" -r 25 "%OUTPUT_FR25%"
REM ffmpeg -i "%INPUT%%SUFFIX%" -strict -2 -vf scale=-1:720 -b:v 1400k "%OUTPUT_1400K%"
pause