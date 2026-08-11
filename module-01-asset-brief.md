# Asset Brief — Modul 1: Bunyi & Padan

*Senarai aset yang diperlukan untuk isi placeholder dalam `module-01-bunyi-padan.json`. Boleh diserahkan kepada illustrator/rakaman audio bila fasa itu tiba (buat masa ini, Claude Code guna placeholder — jangan blok pembangunan game logic sebab tunggu aset ni.)*

## Imej (16 keping, gaya konsisten — cadangan flat/cartoon, sesuai kanak-kanak 6-7 tahun)

| Asset ID | Deskripsi |
|---|---|
| mother_figure | Watak ibu, mesra & senyum |
| father_figure | Watak bapa, mesra & senyum |
| baby_sibling | Bayi/adik kecil |
| sister_figure | Watak kakak/adik perempuan |
| family_group | Keluarga bersama (4-5 orang) |
| hand_icon | Ikon tangan |
| nose_icon | Ikon hidung (pada muka watak) |
| teeth_icon | Ikon gigi/senyuman |
| pet_dog | Anak anjing/haiwan peliharaan |
| washing_hands | Watak basuh tangan |
| heart_hug | Ikon hati / watak berpelukan |
| girl_figure | Watak budak perempuan |
| child_running | Watak kanak-kanak berlari |
| family_cat | Kucing peliharaan |
| brother_figure | Watak abang/adik lelaki |
| orange_fruit | Buah oren |

**Nota gaya visual:** Selaras dengan tema "World of Self, Family and Friends" — guna watak keluarga konsisten (boleh reuse watak yang sama merentasi semua 16 imej supaya rasa satu "keluarga" yang sama, bukan watak berlainan setiap kali).

## Audio (16 klip pendek, format cadangan: MP3, <2 saat setiap satu)

Setiap `audioScript` dalam JSON perlu jadi klip audio sebenar. Cadangan format penyampaian:
- Sebut bunyi fonem dahulu (cth: "m... m...") diikuti perkataan penuh ("Mum")
- **Loghat:** UK English neutral, tempo perlahan & jelas sesuai kanak-kanak Tahun 1
- Sumber: TTS berkualiti tinggi (cth: ElevenLabs/Google Cloud TTS loghat British) ATAU rakaman native-speaker — keputusan ditangguh ikut CLAUDE.md

## Cadangan Struktur Folder dalam Repo

```
/content
  /year1
    module-01-bunyi-padan.json
  /assets
    /images/self_family_friends/
    /audio/self_family_friends/
```

## Nota untuk Claude Code

- Modul ni jadi **template rujukan** untuk 17 modul lain. Bina komponen game (audio playback, tap-to-answer, feedback animation, hint system, PL scoring) supaya reusable — bukan hardcode khas untuk modul ni sahaja.
- `distractorGraphemes` sengaja rawak susunan setiap kali dimainkan (jangan static order) supaya pelajar tak hafal posisi.
- Item bertanda `"note"` (bp013, bp015) sengaja letak pasangan bunyi/huruf yang mudah dikelirukan (r/l, b/d) — ini bahagian HOTS "Application" yang dikehendaki DSKP, JANGAN buang atau permudahkan.
