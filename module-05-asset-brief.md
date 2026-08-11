# Asset Brief — Modul 5: Bina Ayat Mini

## Imej — 100% REUSE, TIADA aset baharu diperlukan

Semua 16 imej dalam modul ini sudah wujud daripada Modul 1 & 4: mother_figure, father_figure, baby_sibling, sister_figure, brother_figure, family_group, friend_amir, girl_figure, family_cat, pet_dog, ball_icon, house_icon, hand_icon, nose_icon, eye_icon, teeth_icon.

Ini melengkapkan **World of Self, Family and Friends** dengan cara paling cekap dari segi produksi — 5 modul, tapi kolam aset imej bersama hanya ±18 keping sepanjang keseluruhan World.

## Teks (Word Tiles)

- **Verb bank (4 patah):** love, like, see, have
- **Subject tetap:** I
- **Object nouns (16):** Mum, Dad, Baby, Sister, Brother, Family, Friend, Girl, Cat, Pet, Ball, House, Hand, Nose, Eye, Teeth

Tiada teks baharu di luar apa yang dah diperkenalkan dalam Modul 1-4 — pelajar hanya belajar 4 kata kerja baharu (love, like, see, have) untuk gabungkan kosa kata sedia ada menjadi ayat.

## Audio

Tiada audio wajib. Cadangan pilihan: bunyi "klik" ringan bila jubin perkataan di-drag, dan bunyi kejayaan (chime) bila ayat lengkap disusun betul.

## Nota Reka Bentuk untuk Claude Code

1. **Mekanik drag-drop jubin perkataan** ini adalah komponen HOTS tertinggi (Creation) dalam World 1 — pastikan interaksinya smooth (snap-to-slot, animasi semula jika salah, bukan sekadar "wrong" statik).
2. Untuk item tier 2-3 yang ada `distractorTiles`, kocak (shuffle) SEMUA jubin (betul + distractor) bersama dalam satu kolam — jangan asingkan visual antara jubin betul & distractor, supaya cabaran sebenar (bukan sekadar susun semula 3 benda yang dah jelas betul).
3. Modul ni jadi penanda aras/reusable component untuk semua modul "sentence_builder" akan datang (Tahun 2 "Bina Ayat Kreatif" & seterusnya) — verbBank & struktur tiles/distractorTiles boleh dikembangkan terus.
4. Selepas modul ni siap, **keseluruhan World of Self, Family and Friends (5 modul) lengkap** — sesuai jadi milestone untuk demo/testing dengan beta tester dulu sebelum sambung ke World of Stories.
