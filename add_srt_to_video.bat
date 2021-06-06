@echo off
REM add srt/ass to video use ffmpeg
REM both .srt and .ass file format are OK.
REM ATTENTION: .srt need utf-8 endcoding.

REM 1) CMD sample:
REM     ffmpeg -i "%INPUT%%SUFFIX%" -i "%SRT_FILE%" -c:v copy -c:a copy -c:s mov_text "%OUTPUT%"

REM 2)FOR the Matroska video file(.mkv), ERROR INFORMATION: Subtitle codec 94213 is not supported, 
REM   Then you should use below cmd:
REM     ffmpeg -i "%INPUT%%SUFFIX%" -i "%SRT_FILE%" -c:v copy -c:a copy -c:s srt      "%OUTPUT%"

rem The order of -c copy -c:s mov_text is important. You are telling FFmpeg:
rem Video: copy, Audio: copy, Subtitle: copy
rem Subtitle: mov_text
rem If you reverse them, you are telling FFmpeg:
rem Subtitle: mov_text
rem Video: copy, Audio: copy, Subtitle: copy
rem Alternatively you could just use -c:v copy -c:a copy -c:s mov_text in any order.

REM 内挂的软字幕 字幕本身不在视频流里 而是和视频流封装在一起
REM mkv支持ass srt pgs格式的字幕等
REM mp4也支持srt格式的字幕

set INPUT=We’re Fighting Covid-19 by Making iFixit a Central Hub of Repair Information
set SUFFIX=.mp4
set SRT_FILE=%INPUT%.srt
set OUTPUT=%INPUT%-srt%SUFFIX%
set OUTPUT_MKV=%INPUT%-srt.mkv
set OUTPUT_MP4=%INPUT%-ssrt.mp4
REM del "%OUTPUT%"
del "%OUTPUT_MKV%"
REM del "%OUTPUT_MP4%"

REM hardsubs to MP4
REM ffmpeg  -i  "%INPUT%%SUFFIX%"  -vf subtitles="%SRT_FILE%" -y "%OUTPUT%"

REM softsubs to MP4
REM ffmpeg -i "%INPUT%%SUFFIX%" -i "%SRT_FILE%" -c:v copy -c:a copy -c:s mov_text "%OUTPUT_MP4%"

REM add to MKV inside
ffmpeg -i "%INPUT%%SUFFIX%" -i "%SRT_FILE%" -c:v copy -c:a copy -c:s srt     "%OUTPUT_MKV%"

SET INPUT=We’re Fighting Covid-19 by Making iFixit a Central Hub of Repair Information.mp4
SET CC=We’re Fighting Covid-19 by Making iFixit a Central Hub of Repair Information.srt
SET OUTPUT=We’re Fighting Covid-19 by Making iFixit a Central Hub of Repair Information-HSRT.mp4
REM del "%OUTPUT%"

REM ffmpeg -i "%INPUT%" -vf subtitles="%CC%" "%OUTPUT%"

REM get SRT from file
REM ffmpeg -i "HarmonyOS is official_ I decoded the marketing BS-srt-cut.mkv" -map 0:2  the.srt
REM ffmpeg -i "HarmonyOS is official_ I decoded the marketing BS-srt-cut.mkv" -vf subtitles=Happy_Scribe_Subtitles.srt "HarmonyOS is official_ I decoded the marketing BS-hsrt.mp4"
