REM Speeding up/slowing down video
REM https://trac.ffmpeg.org/wiki/How%20to%20speed%20up%20/%20slow%20down%20a%20video

set INPUT=C:\Users\jared\Desktop\input
set SUFFIX=.mp4
set OUTPUT_2=%INPUT%-speed2%SUFFIX%
set OUTPUT_1d6=%INPUT%-speed1d6%SUFFIX%
del %OUTPUT_2%
del %OUTPUT_1d6%

ffmpeg -i "%INPUT%%SUFFIX%" -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=2.0[a]" -map "[v]" -map "[a]" "%OUTPUT_2%"

REM ffmpeg -i "%INPUT%%SUFFIX%" -filter_complex "[0:v]setpts=0.625*PTS[v];[0:a]atempo=1.6[a]" -map "[v]" -map "[a]" "%OUTPUT_1d6%"

REM audio will become odd
REM ffmpeg -i "%INPUT%%SUFFIX%" -filter:v "setpts=0.5*PTS" out.mp4 
