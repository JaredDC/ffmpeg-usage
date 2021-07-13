@echo off
for %%a in (*.MP4) do ffmpeg -i "%%~a" -f mp4 -r 25 "%%~na-R25.mp4"
for %%a in (*.MOV) do ffmpeg -i "%%~a" -f mp4 -r 25 "%%~na-R25.mp4"
REM for %%a in (*.flv) do ffmpeg -i "%%~a" -vcodec copy -f mp4 "%%~na.mp4"

rd /s /q OUTPUT_DIR
md OUTPUT_DIR

for %%a in (*-R25.mp4) do move "%%~a" OUTPUT_DIR

goto end

choice /C YN /M "Y: delete flv(s), N: exit(KEEP FILES.)"
IF %ERRORLEVEL% EQU 1 goto ch1
IF %ERRORLEVEL% EQU 2 goto ch2

:ch1
rem ����Ϊ���1�ų���
for %%a in (*.flv) do del "%%~a"
echo "deleted flv files."
goto end

:ch2
echo "KEEP FILES."
rem ����Ϊ���2�ų���

:end
pause