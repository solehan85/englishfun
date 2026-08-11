# Asset Brief — World of Knowledge (Modul 11-18)

*Dunia terakhir dalam MVP. 8 modul kongsi SATU "kolam objek" (kedai, kitar semula, alam) supaya reuse maksimum merentasi modul — corak sama seperti World 1 & 2.*

## Kelompok Aset 1 — Kedai Mini (Modul 11, digunakan semula dalam Modul 14)

**Objek kedai (8):** apple, banana, hat, book, ball, kite, umbrella, toy_car (dengan tag harga 1-8 untuk Modul 11)
**Duit syiling:** coin_1, coin_2, coin_5, coin_10 (ikon mudah, nombor jelas)

## Kelompok Aset 2 — Kitar Semula (Modul 12, digunakan semula dalam Modul 14)

**Tong kitar semula (3):** bin_paper, bin_plastic, bin_organic
**Item kitar semula (16):** newspaper, cardboard_box, paper_cup, plastic_bottle, plastic_bag, banana_peel, apple_core, food_scrap, glass_jar, drink_can, torn_book, vegetable_scrap, used_tissue, wet_newspaper, egg_shell, foil_wrapper

## Kelompok Aset 3 — Watak & Ikon Am (Modul 13, 15)

Reuse watak sedia ada (teacher, mum, dad, friend_amir, friend_siti daripada Modul 2) — **tiada watak baharu diperlukan** untuk Modul 13.
Modul 15 tidak perlukan imej watak baharu (fokus audio-naratif), tapi cadangan ikon ringkas untuk visual sokongan: plant_watering, seashells, road_crossing, sun_icon, recycling_bin_blue, bee_flower, coin_jar, caterpillar_butterfly, helmet_bicycle, tree_planting.

## Kelompok Aset 4 — Bina Ayat Kreatif (Modul 17)

Kebanyakan ikon REUSE daripada kelompok 1-3 di atas (bin_paper, sun_icon, coin_jar, helmet_icon, dll). **Baharu:** water_drop_icon, tree_sapling_icon, road_crossing, caterpillar_icon, tree_icon, moon_icon, sorting_bins.

## Kelompok Aset 5 — Blends & Digraphs (Modul 18)

16 ikon perkataan baharu: ship_icon, chip_icon, thumb_icon, blue_swatch, crab_icon, star_icon, drum_icon, green_swatch, plant_icon (reuse drpd Modul 17), flag_icon, spoon_icon, frog_icon, snail_icon, clap_hands_icon, glue_icon. **Nota:** `kancil_hopping` (bl012) reuse terus daripada World of Stories — contoh baik penyambungan aset merentasi Dunia.

## Audio

- **Modul 11, 12, 14, 17:** Tiada audio wajib (visual/teks/interaksi sentuh)
- **Modul 13:** 12 klip soalan pendek (UK English)
- **Modul 15:** 10 klip naratif pendek (2 ayat setiap satu) — klip PALING PANJANG dalam keseluruhan MVP, uji rakaman/TTS jelas untuk ayat majmuk ringkas
- **Modul 18:** 16 klip bunyi blend/digraf (format sama seperti Modul 1)

## Nota Reka Bentuk Keseluruhan untuk Claude Code

1. **Modul 11 & 14 kongsi objek kedai yang sama** — bina aset sekali, guna dua kali (beli vs describe).
2. **Modul 12 & 14 kongsi objek kitar semula** — sama corak reuse.
3. **Modul 15 & 16 ialah pasangan sengaja** (dengar vs baca, kandungan naratif berlainan tapi format soalan sama) — reusable component untuk sistem "detail comprehension" (audio & teks) boleh dikongsi.
4. **Modul 17 & 18 adalah PENUTUP MVP** — pastikan kedua-dua modul ini diuji dengan teliti sebelum sesi beta tester bermula, sebab ini kompetensi paling kompleks (ayat 4-7 patah perkataan, blends/digraphs) dalam keseluruhan 18 modul.
5. Selepas World of Knowledge siap, **KESELURUHAN 18 MODUL MVP LENGKAP**. Rujuk `CLAUDE.md` untuk susunan kerja pembangunan (mula dengan Modul 1 sebagai template, scale ke baki 17).
