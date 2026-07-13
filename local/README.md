# 📥 คู่มือดาวน์โหลดวิดีโอ/เพลงจาก YouTube บน iPhone และ iPad `Local`

## ติดตั้ง a-Shell และ yt-dlp

1. ดาวน์โหลดแอป **a-Shell** จาก App Store
2. เปิดแอป แล้วติดตั้ง `yt-dlp` ด้วยคำสั่ง:

   ```bash
   pip install yt-dlp
   ```

3. ตรวจสอบว่าติดตั้งสำเร็จ:

   ```bash
   yt-dlp --version
   ```

4. ตั้งค่าตัวย่อคำสั่ง (Alias)

สร้างไฟล์ `.profile` ไว้ในโฟลเดอร์ Documents ของแอป `a-Shell` เพื่อให้เรียกใช้งานได้ง่ายขึ้น โดยใช้คำสั่งย่อ (ดูโค้ดตัวอย่างได้ที่ [GitHub .profile](https://github.com/seaboie/download-youtube/blob/main/.profile))



## In `a-Shell` app

### ใช้ `Vim` เป็น editor

- เปิดแอป a-Shell

> [Documents]$

- พิมพ์คำสั่ง :
```
vim .profile
```
ระบบจะสร้างไฟล์ .profile พร้อม หน้า editor `vim` เพื่อใช้เขียนโค้ด หรือแก้ไข

- กด `i` เพื่อเข้าสู่โหมดแทรก ( Insert Mode )

- คัดลอกและวางโค้ดด้านล่าง:
```
# For more details, see : https://github.com/seaboie/download-youtube/blob/main/alias/VDO.md
alias ytmp4='yt-dlp -P ~/Documents/video -f "bv*[vcodec^=avc1][height<=2160]+ba[acodec^=mp4a]/b[ext=mp4]" -i --embed-subs --write-auto-subs --sub-langs "en.*,en" --sub-format "srt/best" --convert-subs srt --embed-thumbnail --embed-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'




# For more details, see : https://github.com/seaboie/download-youtube/blob/main/alias/MUSIC.md
alias ytmp3='yt-dlp -P "~/Documents/audio/" --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "%(upload_date)s - %(title).60s [%(id)s].%(ext)s"'

```

- กด `Esc`เพื่อออกจากโหมดแทรก
- พิมพ์ `:wq` แล้วกด `Enter` ( บันทึก และ ออก)
- 🛠️ Run คำสั่งเพื่อ refresh Terminal ทุกครั้งที่มีการแก้ไขโค้ด
```
source .profile
```

---


## 📲 ติดตั้ง Shortcuts (ทางลัด) by `apple`

กดลิงก์ด้านล่างเพื่อเพิ่ม Shortcut เข้าเครื่องของคุณ และแนะนำให้ **Add to Home Screen (เพิ่มไปยังหน้าจอโฮม)** เพื่อความสะดวกในการกดใช้งาน:

* 🎬 **ดาวน์โหลดวิดีโอ:** [VDO Shortcut](https://www.icloud.com/shortcuts/4bbf0acd7c3245618bef86e736a5dc18)
* 🎵 **ดาวน์โหลดเฉพาะเพลง (Audio):** [MUSIC Shortcut](https://www.icloud.com/shortcuts/a7f50e5e91ca47a0841805e57b74f017)

---

## 🚀 ขั้นตอนการดาวน์โหลดจริง

ลำดับการทำงานเมื่อคุณต้องการดาวน์โหลดคลิป:

1. **คัดลอกลิงก์:** เปิด YouTube.
เปิดแอป YouTube แล้วกด **Copy Link** (คัดลอกลิงก์) ของวิดีโอที่ต้องการ


2. **รันแอป Shortcuts:** กดจากหน้าจอโฮม.
เปิดแอป **Shortcuts** (หรือกดจากไอคอนที่เพิ่มไว้บนหน้าจอโฮม) แล้วเลือกคำสั่งดาวน์โหลดที่คุณตั้งไว้


3. **วางลิงก์และส่งต่อ:** ส่งค่าไป a-Shell.
วางลิงก์ YouTube ที่คัดลอกมาลงในช่องรับข้อมูล แล้วกด **ตกลง (Send)** ตัวระบบจะส่งคำสั่งไปยังแอป a-Shell โดยอัตโนมัติ


4. **รอระบบทำงานจนเสร็จ:** บันทึกไฟล์สำเร็จ.
แอป a-Shell จะเปิดขึ้นมาและเริ่มดาวน์โหลดไฟล์ เมื่อเสร็จแล้ว ไฟล์ทั้งหมดจะถูกบันทึกไว้ในแอป **Files (ไฟล์)** > โฟลเดอร์ **a-Shell**


---

## 🎬 วิธีเปิดเล่นไฟล์ด้วยแอป VLC

ถ้าคุณต้องการเปิดดูวิดีโอหรือฟังเพลงแบบไม่มีโฆษณาคั่น สามารถใช้แอป **VLC** ช่วยเล่นได้:

1. ดาวน์โหลดแอป **VLC** จาก App Store
2. เปิดแอป VLC แล้วไปที่แถบ Browse (เลือกดู)ด้านล่าง
3. เลือก **Local Files (ไฟล์ในเครื่อง)**
4. เข้าไปที่โฟลเดอร์ **a-Shell** แล้วเลือกไฟล์ที่เพิ่งดาวน์โหลดเพื่อเปิดเล่นได้ทันที!



---