# Asset Brief — Modul 3: Jejak Huruf

## Imej — REUSE hampir keseluruhannya daripada Modul 1

15 daripada 16 imej dalam modul ini **sama persis** dengan `module-01-asset-brief.md` (mother_figure, father_figure, brother_figure, sister_figure, family_group, hand_icon, nose_icon, teeth_icon, pet_dog, washing_hands, heart_hug, girl_figure, child_running, family_cat, orange_fruit). **Tiada kerja imej baharu diperlukan** untuk ini.

**SATU imej baharu diperlukan:**

| Asset ID | Deskripsi |
|---|---|
| eye_icon | Ikon mata (pada muka watak), gaya sama dengan `nose_icon`/`teeth_icon` |

## Audio

**Tiada audio baharu diperlukan** untuk modul ini — mekanik "trace" adalah visual/motor sepenuhnya (jejak jari pada skrin), tiada komponen dengar.

## Nota Teknikal Penting untuk Claude Code

1. **Ini BUKAN mekanik "betul/salah"** seperti Modul 1-2. Validasi guna **accuracy score** (peratus lintasan jejari yang menepati laluan huruf) — bukan single tap-to-select.
2. Cadangan implementasi: guna path SVG/canvas untuk setiap huruf (boleh generate daripada font print yang jelas, cth. font khas kanak-kanak seperti "Sassoon" atau font print standard), overlay laluan bertitik, kesan sentuhan pengguna, kira % overlap.
3. Threshold longgar (≥70%) sebab ini Tahun 1 — fokus pada usaha & pergerakan motor asas, BUKAN ketepatan kaligrafi tepat.
4. `strokeHint` dalam JSON adalah teks arahan mudah untuk animasi panduan (anak panah/urutan) — bukan koordinat teknikal, Claude Code perlu terjemah kepada laluan sebenar semasa pembangunan.
5. Komponen tracing ni (canvas capture, accuracy scoring, hint animation) boleh jadi **reusable engine component** untuk modul writing/cursive Tahun 3 nanti (rujuk `DSKP-English-Y1Y6-Peta-JangkaPanjang.md` — cursive perlukan mekanik serupa tapi lebih kompleks).
