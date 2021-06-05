REM Output metadata information
::ffmpeg -i "The Colors Of Siam (Party Version).mp3" -f ffmetadata metadata.txt

REM Add album art to the music file 
ffmpeg -y -i "The Colors Of Siam (Main Theme Version).mp3" -i "The Colors Of Siam (Party Version).png" -map 0:0 -map 1:0 -c copy -id3v2_version 3 "The Colors Of Siam (Main Theme Version).mp3"