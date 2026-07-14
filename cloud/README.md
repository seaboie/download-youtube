# 📥 คู่มือดาวน์โหลดวิดีโอ/เพลงจาก YouTube บน iPhone และ iPad `Cloud`

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


4. Update `pip`
    ```bash
    pip install --upgrade pip
    ```


## In `a-Shell` app ( Download from `App Store` )


### ใช้ `Vim` เป็น editor

- เปิดแอป a-Shell

> [Documents]$

- เปลี่ยน Directory ไปที่ `cloud`
```
cd ~cloud
```
> [~cloud]$

- print ออกมาดูว่าใน Folde `cloud` มีไฟล์ อะไรบ้าง
```
ls -la
```
จะพบไฟล์ที่ชื่อว่า `..profile.icloud`

- Run คำสั่งเพื่อ Download ไฟล์ จาก `icloud` ลงมาในเครื่อง
```
downloadFile ..profile.icloud
```

คราวนี้ ไฟล์ `.profile.icloud` จะเปลี่ยนเป็น `.profile`

```
ls -la
```
- print ออกมาดูว่าใน Folde `cloud` มีไฟล์ `.profile` แทนที่ `..profile.icloud`


- พิมพ์คำสั่ง :
```
vim .profile
```
ระบบจะเปิดไฟล์ .profile ( ใน `cloud` โฟลเดอร์ ) พร้อม หน้า editor `vim` เพื่อใช้เขียนโค้ด หรือแก้ไข

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
- 🛠️ Run คำสั่งเพื่อ refresh Terminal ทุกครั้งที่มีการแก้ไขโค้ด หรือสร้างไฟล์ใหม่

```
source .profile
```

### 🛠️ 🛠️ 🛠️ สร้าง `symbolic link ( symlink )` ใน `a-Shell`

#### **ข้อควรรู้**
1. **Symbolic Link สามารถชี้ไปยังไฟล์หรือโฟลเดอร์ก็ได้**
2. **หากไฟล์ต้นทาง (`cloud`) ถูกลบ Symbolic Link (`target`) จะกลายเป็นลิงก์ที่หัก (broken link)**
3. **Symbolic Link สามารถชี้ข้ามระบบไฟล์ (filesystem) ได้**
4. **ใช้ `ls -l` เพื่อดูว่าลิงก์ชี้ไปที่ไหน:**
   ```bash
   ls -l /path/to/target
   ```
   ผลลัพธ์จะแสดงแบบนี้:
   ```
   lrwxrwxrwx 1 user group 11 Jul 13 12:00 target -> source`
   ```
   (`->` จะแสดงว่าลิงก์ชี้ไปที่ไหน)

- กลับมาที่ `[~Documents]`
```base
cd
```
- ตอนนี้ อยู่ที่ `[~Documents]`

### ✨ สร้าง `symlink`

> 🔗 🔗 🔗 `symlink` Pattern : `ln -s source target`


- Run this `command`
```
ln -s ~/cloud/.profile ~/Documents/.profile
```

- Run เพื่อเช็คว่า `symlink` ได้สร้างแล้วหรือยัง
```
ls -la .profile
```

- ผลลัพธ์ คล้ายๆ แบบนี้
```
lrwxr-xr-x  1 mobile  mobile  99 Jul 13 19:40 .profile -> /private/var/mobile/Containers/Data/Application/A000000A-4FFF-4EEE-A111-111111111111/clou
d/.profile
```
> `.profile -> /private/var/mobile/Container/Data/Application/............`

- ✨ ✨ ✨ สร้าง `symlink` เสร็จแล้ว
---

### 


## 📲 ติดตั้ง Shortcuts (ทางลัด) by `apple`

กดลิงก์ด้านล่างเพื่อเพิ่ม Shortcut เข้าเครื่องของคุณ และแนะนำให้ **Add to Home Screen (เพิ่มไปยังหน้าจอโฮม)** เพื่อความสะดวกในการกดใช้งาน:

* 🎬 **ดาวน์โหลดวิดีโอ:** [VDO Shortcut](https://www.icloud.com/shortcuts/4d3b13f11dd54dbf86124f13bc2c11c1)
* 🎵 **ดาวน์โหลดเฉพาะเพลง (Audio):** [MUSIC Shortcut](https://www.icloud.com/shortcuts/95e38eb8f2ff4743bf54432b60404aab)

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