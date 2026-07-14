## M4A `(AAC audio)`


#### **1. Command Structure**
The alias will use `yt-dlp` with the following options:

- **`-P "~/Documents/m4a/"`**
  Sets the download directory to `~/Documents/m4a/`.

- **`--extract-audio`**
  Extracts only the audio from the video.

- **`--audio-format m4a`**
  Converts the audio to M4A (AAC) format, which is a high-quality, widely compatible audio format.

- **`--audio-quality 0`**
  Sets the audio quality to the best available (0 = best).

- **`--embed-thumbnail`**
  Embeds the video thumbnail into the audio file (if available).

- **`--add-metadata`**
  Adds metadata (title, artist, etc.) to the audio file.

- **`-o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"`**
  Sets the output filename template:
  - `%(upload_date)s`: Upload date of the video.
  - `%(title).60s`: First 60 characters of the video title.
  - `%(id)s`: YouTube video ID.
  - `%(ext)s`: File extension (e.g., `m4a`).

---

#### **2. Final Alias**
```bash
alias ytm4a='yt-dlp -P "~/Documents/m4a/" --extract-audio --audio-format m4a --audio-quality 0 --embed-thumbnail --add-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'
```


---

#### **3. How to Use the Alias**
Run the alias followed by the YouTube URL:
```bash
ytm4a "https://www.youtube.com/watch?v=VIDEO_ID"
```

This will download the audio as an M4A file to `~/Documents/m4a/` with the specified naming convention.

---
