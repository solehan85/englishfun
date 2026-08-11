# Asset Brief — Modul 4: Padan Label

## Imej — REUSE hampir keseluruhan

14 daripada 16 imej **sama persis** dengan Modul 1, 2 & 3 (mother_figure, father_figure, baby_sibling, sister_figure, brother_figure, family_group, hand_icon, nose_icon, eye_icon, teeth_icon, pet_dog, family_cat, girl_figure, friend_amir). **Tiada kerja imej baharu** untuk ini.

**DUA imej baharu diperlukan:**

| Asset ID | Deskripsi |
|---|---|
| house_icon | Ikon rumah, gaya konsisten dengan ikon lain — akan turut digunakan sebagai ikon hub "World of Self, Family and Friends" pada peta dunia |
| ball_icon | Bola mainan ringkas |

## Teks Label (16 perkataan, font print jelas untuk kanak-kanak)

Mum, Dad, Baby, Sister, Brother, Family, Hand, Nose, Eye, Teeth, Pet, Cat, Girl, Friend, House, Ball

## Audio

Tiada audio wajib untuk mekanik "label match" (fokus membaca perkataan bertulis). **Cadangan pilihan (bukan wajib):** audio "read aloud" bila pelajar tap perkataan salah 2 kali berturut-turut (scaffolding tambahan) — boleh reuse audio sedia ada daripada Modul 1 untuk perkataan yang bertindih (Mum, Dad, dll).

## Nota Reka Bentuk untuk Claude Code

1. Setiap item ada `labelContext` — penerangan di mana label ini "wujud" dalam dunia permainan (poster, pintu, label pada objek). Ini bukan hiasan semata — DSKP eksplisit nyatakan teks mesti tertanam dalam persekitaran, bukan senarai perkataan terpencil. Elok jika UI/scene design cuba refleksikan konteks ni secara visual (cth: perkataan "Mum" muncul sebagai label pada bingkai gambar, bukan sekadar kad flash).
2. Item `pl011`/`pl012` (Pet vs Cat) sengaja letak sebagai pasangan mengelirukan (HOTS Application) — jangan buang.
3. `house_icon` akan digunakan dua kali dalam sistem: (a) sebagai jawapan item pl015, (b) berpotensi sebagai ikon navigasi hub World of Self/Family/Friends pada peta dunia keseluruhan — pastikan reka bentuknya cukup generik untuk dwi-guna.
