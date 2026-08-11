# Asset Brief — World of Stories (Modul 6-10)

*Kelima-lima modul dalam World ni kongsi SATU naratif anchor: kisah rakyat tempatan **Sang Kancil** — supaya aset sangat efisien digunakan semula merentasi modul, dan dunia terasa satu kesatuan cerita, bukan 5 permainan berasingan.*

## Watak

| Character ID | Deskripsi |
|---|---|
| kancil | Watak utama — pelanduk/mousedeer kecil, bijak & lincah. Muncul dalam Modul 6, 8, 9 |
| buaya (crocodile), harimau (tiger), lebah (bees) | Watak sokongan untuk 3 daripada 4 cerita dalam Modul 8 |

## Lokasi Hutan (16 lokasi — REUSE SEPENUHNYA antara Modul 6 & Modul 10)

river, tree, cave, bridge, rock, log, bush, path, pond, hill, nest, flower, leaf, stone, fence, well

**Ini penjimatan produksi besar:** 16 aset lokasi ni dilukis SEKALI sebagai satu "peta hutan" scene, digunakan untuk DUA modul (Modul 6 — dengar & tunjuk; Modul 10 — baca & cari). Cadangan: bina scene hutan interaktif SATU kali, kedua-dua modul cuma tukar mekanik interaksi (audio-trigger vs text-trigger) pada scene yang sama.

## Aset Panel Cerita (Modul 8 — 4 cerita x 4 panel = 16 ilustrasi)

Story 1 (Kancil & Buaya): kancil_hungry_riverbank, kancil_talks_crocodile, kancil_hops_crocodiles, kancil_eats_fruit
Story 2 (Kancil & Harimau): kancil_meets_tiger, kancil_points_trap, tiger_enters_cage, kancil_closes_cage
Story 3 (Kancil & Lebah): kancil_lost_path, kancil_finds_beehive, kancil_asks_bees, kancil_walks_home
Story 4 (Kancil Berkongsi): kancil_finds_big_fruit, kancil_calls_friends, friends_share_fruit, friends_happy_together

**Nota:** `kancil_running` dan `kancil_hopping` (digunakan dalam Modul 9) boleh reuse pose/gaya seni yang sama dengan panel cerita di atas.

## Aset Haiwan Hutan (Modul 9 — 16 objek CVC)

forest_cat, forest_hen, forest_pig, forest_fox, forest_bat, forest_sun, forest_log (reuse drpd lokasi hutan), forest_jar, forest_map, forest_bag, forest_mud, forest_web, forest_fish, forest_den — semua gaya ilustrasi ringkas selari dengan estetika hutan Kancil.

## Audio

- **Modul 6:** 16 klip arahan pendek (UK English, tempo perlahan)
- **Modul 7:** 8 klip lagu/puisi pendek (boleh guna melodi asal ringkas atau baca berirama sahaja tanpa muzik — keputusan produksi)
- **Modul 9:** 16 set audio fonem (bunyi berasingan + gabungan penuh), ikut format Modul 1
- **Modul 8 & 10:** Tiada audio wajib (visual & teks sahaja)

## Nota Reka Bentuk Penting untuk Claude Code

1. **Modul 7 (Zon Puisi & Lagu) TIADA PL gate** — ini satu-satunya modul dalam keseluruhan MVP yang sengaja tiada `passThreshold`/scoring gate. Reka bentuk UI perlu refleksikan ini — jangan letak progress bar/skor yang sama macam modul lain, guna nada "explore & enjoy" sahaja.
2. Semua teks puisi/lagu dalam Modul 7 adalah **kandungan asli tulisan sendiri untuk projek ni** — bukan lirik/puisi sedia ada. Sahkan ini kekal jika ada penambahan kandungan akan datang (elak isu hak cipta).
3. Modul 6 & 10 berkongsi scene 3D/2D yang sama — bina infrastruktur "world map" hutan Kancil sekali, reuse untuk kedua-dua modul (jimat masa pembangunan ketara).
4. Selepas World of Stories siap, **2 daripada 3 Dunia MVP lengkap**. Baki: World of Knowledge (8 modul).
