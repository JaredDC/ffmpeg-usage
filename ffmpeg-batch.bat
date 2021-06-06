@echo off
::for %%a in (*.flv) do ffmpeg -i "%%~a" -f mp4 "%%~na.mp4"
for %%a in (*.flv) do ffmpeg -i "%%~a" -vcodec copy -f mp4 "%%~na.mp4"

rd /s /q flv_del
md flv_del

for %%a in (*.flv) do move "%%~a" flv_del

goto end

choice /C YN /M "Y: delete flv(s), N: exit(KEEP FILES.)"
IF %ERRORLEVEL% EQU 1 goto ch1
IF %ERRORLEVEL% EQU 2 goto ch2

:ch1
rem 这里为你的1号程序
for %%a in (*.flv) do del "%%~a"
echo "deleted flv files."
goto end

:ch2
echo "KEEP FILES."
rem 这里为你的2号程序

:end
pause