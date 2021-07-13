现在有个视频video.avi，有个音频audio.mp3，将其合并成output.avi。两个命令（video2.avi是中间文件 ，用完可删）：
ffmpeg -i "致命女人，达达里奥Alexandra Daddario.mp4" -vcodec copy -an temp.mp4
ffmpeg -i temp.mp4 -i "James Blunt-You‘re Beautiful.mp3" -vcodec copy -acodec copy "致命女人_达达里奥-Alexandra Daddario.mp4"