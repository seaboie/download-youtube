# For more details, see : https://github.com/seaboie/download-youtube/blob/main/alias/VDO.md
alias ytmp4='yt-dlp -P ~/Documents/video -f "bv*[vcodec^=avc1][height<=2160]+ba[acodec^=mp4a]/b[ext=mp4]" -i --embed-subs --write-auto-subs --sub-langs "en.*,en" --sub-format "srt/best" --convert-subs srt --embed-thumbnail --embed-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'




# For more details, see : https://github.com/seaboie/download-youtube/blob/main/alias/MUSIC.md
alias ytmp3='yt-dlp -P "~/Documents/mp3/" --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'


# For more details, see : https://github.com/seaboie/download-youtube/blob/main/alias/M4A.md
alias ytm4a='yt-dlp -P "~/Documents/m4a/" --extract-audio --audio-format m4a --audio-quality 0 --embed-thumbnail --add-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'