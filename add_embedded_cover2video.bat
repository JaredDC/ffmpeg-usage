REM To add an embedded cover/thumbnail:
@echo off
set INPUT=����Ů��_������-Alexandra Daddario.mp4
set COVER_PNG=����Ů��_������-Alexandra Daddario.png
set OUTPUT=����Ů��_������-Alexandra Daddario-Cover.mp4
ffmpeg  -i "%COVER_PNG%" -i "%INPUT%" -map 0 -map 1 -c copy -c:v:1 png -disposition:v:1 attached_pic "%OUTPUT%"