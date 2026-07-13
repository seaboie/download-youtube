```
alias ytmp4='yt-dlp -P ~/Documents/video -f "bv*[vcodec^=avc1][height<=2160]+ba[acodec^=mp4a]/b[ext=mp4]" -i --embed-subs --write-auto-subs --sub-langs "en.*,en" --sub-format "srt/best" --convert-subs srt --embed-thumbnail --embed-metadata -o "%(upload_date)s - %(title).100s [%(id)s].%(ext)s"'
```

This is a highly optimized, powerhouse of a Bash/Zsh command. You're creating a shortcut (`alias`) called `ytmp4` that uses **`yt-dlp`** (the gold standard for downloading online videos) to grab a video, format it safely as an MP4, embed subtitles, download metadata, and neatly organize it into your local files.

Here is exactly what each part of this beast does, broken down by function:

### 1. Where it Saves & Naming Rules

* **`-P ~/Documents/video`**: Tells `yt-dlp` to save the finished download directly into your `~/Documents/video` directory (so you don't clutter whatever folder your terminal happens to be sitting in).
* **`-o "%(upload_date)s - %(title).100s [%(id)s].%(ext)s"`**: Defines the exact filename structure. It will look like this: `20260709 - Video Title [VideoID].mp4`. Notice the `.100s`—that safely cuts off the title at 100 characters so your computer doesn't throw an error over a filename that's too long.

### 2. Video & Audio Quality (The Smart Selection)

This is the most complex section: `-f "bv*[vcodec^=avc1][height<=2160]+ba[acodec^=mp4a]/b[ext=mp4]"`

* **`bv*[vcodec^=avc1][height<=2160]`**: Look for the **b**est **v**ideo available, but *only* up to **4K** resolution (`height<=2160`). Crucially, it filters for the **AVC1 (H.264)** video codec. Why? Because H.264 is the most universally compatible video format on earth.
* **`+ba[acodec^=mp4a]`**: Find the **b**est **a**udio that uses the **MP4A (AAC)** codec.
* **`/b[ext=mp4]`**: The forward slash means **"OR"**. If it can't find separate high-quality video and audio tracks with those exact specifications, it falls back to downloading the best pre-merged, single file that is natively an MP4.

### 3. Subtitle Management

* **`--embed-subs`**: Bakes the subtitles directly into the video file container as a track you can toggle on or off.
* **`--write-auto-subs`**: If the creator didn't upload dedicated subtitles, this forces it to grab the automatically generated ones (like YouTube's auto-captions).
* **`--sub-langs "en.*,en"`**: Limits the subtitles to English (including regional variants like `en-US` or `en-GB`).
* **`--sub-format "srt/best" --convert-subs srt`**: Grabs SubRip (`.srt`) format subtitles, or automatically converts whatever it finds into `.srt` because it's widely supported by players like VLC.

### 4. Metadata & Extras

* **`-i`**: Stands for "ignore errors." If you pass it a playlist and one video is broken or deleted, it won't crash; it will skip it and keep going.
* **`--embed-thumbnail`**: Takes the video's thumbnail image and embeds it as the cover art for the `.mp4` file.
* **`--embed-metadata`**: Bakes in details like the video description, uploader name, upload date, and categories into the file's metadata tags.

---

> **Summary:** When you type `ytmp4 [URL]`, you get a highly compatible 4K (or lower) MP4 file with English subtitles and thumbnail art attached, cleanly labeled by date and title inside your video documents folder. It's an excellent, bulletproof setup.
