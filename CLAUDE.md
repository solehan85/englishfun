# CLAUDE.md — Eduverse English (MVP: Tahun 1-2)

## Project Overview

Eduverse English ialah platform permainan interaktif untuk pembelajaran Bahasa Inggeris KSSR, konsep serupa LiteracyPlanet, dibina khas untuk kurikulum SBELC Malaysia (Tahun 1 & 2 untuk MVP). Produk ketiga/keempat dalam siri Eduverse by Mosobimo (selepas Fun Math, Seronoknya Bahasa, Seronok Sains).

**Matlamat MVP:** Bina platform web (mobile-first) dengan ~18 modul permainan merentasi 3 Dunia (Self/Family/Friends, Stories, Knowledge) dan 5 Pilar Kemahiran (Listening, Speaking, Reading, Writing, Language Arts) untuk Tahun 1-2, dengan sistem login pelajar & progress tracking.

Rujuk dua dokumen sokongan dalam repo (`/docs`):
- `DSKP-English-Y1Y2-Analisis-Modul.md` — spesifikasi modul terperinci MVP
- `DSKP-English-Y1Y6-Peta-JangkaPanjang.md` — reka bentuk skema supaya scalable ke Tahun 3-6

## Tech Stack

- **Frontend:** Single-file HTML5/JS per game module — ikut pattern terbukti Ninja Math & Money Master (self-contained, Web Audio API, mobile-first). Satu "hub" HTML/JS ringan sebagai world map yang link ke setiap modul.
- **Backend:** Firebase (Firestore + Auth ringkas)
- **Firebase project:** `eduverse-english` (baharu, `asia-southeast1` ikut pattern Seronoknya Bahasa)
- **Hosting/Deploy:** GitHub → Firebase Hosting
- **Audio:** Web Audio API untuk playback. **Fasa 1 guna placeholder/silent audio cues** (bina mekanik & visual dulu) — sumber audio sebenar (TTS vs rakaman native-speaker) diputuskan selepas game logic setiap modul stabil, supaya tak jadi bottleneck awal pembangunan.

## Login System (ikut pattern Seronoknya Bahasa)

- Pelajar log masuk guna: **Nama + Kelas + PIN 4-digit**
- PIN di-hash guna SHA-256 sebelum simpan Firestore
- **Tiada parent portal dalam MVP ini** (fasa akan datang)
- Medan `year` (1 atau 2) pada rekod pelajar untuk auto-filter modul relevan

## Skema Data Firestore (Cadangan)

```
students/{studentId}
  - name: string
  - kelas: string
  - pinHash: string
  - year: 1 | 2
  - createdAt: timestamp

modules/{moduleId}
  - year: 1 | 2
  - world: "self_family_friends" | "stories" | "knowledge"
  - skill: "listening" | "speaking" | "reading" | "writing" | "language_arts"
  - title: string (BM & EN)
  - mechanicType: string  // rujuk senarai mekanik di bawah
  - hotsLevel: "application" | "analysis" | "evaluation" | "creation"
  - passThreshold: 3   // PL gate, tetap semua modul

progress/{studentId}_{moduleId}
  - studentId, moduleId
  - performanceLevel: 1-6   // dikira dari accuracy + bilangan hint
  - hintsUsed: number
  - attempts: number
  - masteryAchieved: boolean  // true bila PL >= 3
  - lastPlayed: timestamp
```

## Senarai 18 Modul MVP (Tahun 1-2)

*(Rujuk `DSKP-English-Y1Y2-Analisis-Modul.md` Seksyen 6 untuk butiran penuh setiap modul)*

**World of Self, Family and Friends:** Bunyi & Padan, Sapa & Balas, Jejak Huruf, Padan Label, Bina Ayat Mini

**World of Stories:** Ikut Arahan, Zon Puisi & Lagu, Bina Ceritaku, Susun & Baca, Cari dalam Dunia

**World of Knowledge:** Kedai Mini, Puzzle Alam Sekitar, Suka/Tak Suka, Nama & Huraikan, Dengar & Perincian, Faham Perincian, Bina Ayat Kreatif, Bunyi & Padan Lanjutan

## Jenis Mekanik Permainan (Reusable Components)

| Mekanik | Skill | Deskripsi Teknikal |
|---|---|---|
| Audio-match | Listening | Main audio, pelajar pilih huruf/grafem/perkataan yang padan |
| Predictive-clue | Listening | Tunjuk visual dulu, pelajar teka bunyi/perkataan sebelum audio dimainkan |
| Selection-dialogue | Speaking | NPC "bercakap" (teks/audio), pelajar pilih respons frasa tetap yang betul (BUKAN speech-recognition — dikunci untuk MVP) |
| Phonics-blend | Reading | Susun fonem jadi perkataan (drag/tap huruf berurutan) |
| Scavenger-read | Reading | Cari & baca label/teks dalam scene, jawab soalan ringkas |
| Trace-letter | Writing | Canvas tracing (mouse/touch) untuk huruf cetak, validasi lintasan |
| Sentence-builder | Writing | Drag-drop perkataan/frasa untuk bina ayat |
| Story-sequence | Language Arts | Susun blok cerita ikut turutan logik |
| Virtual-shop | Language Arts | Simulasi beli-belah ringkas (literasi kewangan) |
| Sort-match | Language Arts | Kategorikan objek/gambar (kelestarian alam) |

Setiap mekanik perlu **immediate multimodal feedback** (visual + audio + micro-animation) bila jawapan betul/salah — ini keperluan DSKP eksplisit, bukan pilihan.

## Kekangan Reka Bentuk (WAJIB — jangan langgar)

1. **Tiada istilah tatabahasa eksplisit** dalam UI/copy (contoh: jangan letak label "Present Tense" atau "Noun" di skrin). Tatabahasa diuji melalui penggunaan, bukan pengajaran eksplisit.
2. **UK English** untuk semua teks/ejaan (colour bukan color, dsb.)
3. Kosa kata terhad kepada kluster tema yang dinyatakan (Free Time, Old House, Get Dressed untuk Tahun 2) — semak semula bila wordlist rasmi penuh tersedia
4. Setiap modul kena jejak `hintsUsed` untuk kira Performance Level (1-6) — **PL ni dalaman sahaja, JANGAN paparkan sebagai "gred" kepada pelajar dalam MVP** (keputusan sudah dibuat)
5. Adaptive difficulty: bilangan hint mempengaruhi kesukaran tugasan seterusnya dalam sesi yang sama

## Susunan Kerja Dicadangkan untuk Claude Code

1. Setup projek (repo structure, Firebase config, deployment pipeline)
2. Bina sistem login pelajar (reuse/adapt daripada Seronoknya Bahasa jika kod tersedia)
3. Bina navigasi 3 Dunia (world map/hub screen)
4. Bina SATU mekanik penuh dulu sebagai template (cadangan: Audio-match, sebab paling asas) — uji end-to-end termasuk progress tracking
5. Scale kepada modul lain guna template yang sama
6. Bina dashboard progress ringkas untuk pelajar (bukan parent dashboard — fasa lain)

## Isu Terbuka (Perlu Keputusan Semasa Build)

- Sumber audio sebenar (TTS vs rakaman native-speaker) — diputuskan lepas game logic modul pertama stabil
- Wordlist rasmi Tahun 1-2 — belum ada, kandungan guna kluster tema buat masa ini
