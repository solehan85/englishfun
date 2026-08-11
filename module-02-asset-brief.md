# Asset Brief — Modul 2: Sapa & Balas

## Watak NPC (4 watak, reuse merentasi semua 16 item)

| Character ID | Deskripsi |
|---|---|
| friend_amir | Rakan sebaya lelaki, ceria |
| friend_siti | Rakan sebaya perempuan, ceria |
| teacher | Cikgu, mesra & sabar |
| mum / dad / sister | Ahli keluarga (reuse watak sama dari Modul 1 — `mother_figure`, `father_figure`, `sister_figure` — untuk konsistensi visual merentasi modul) |

**Nota:** Guna semula watak keluarga daripada Modul 1 (`module-01-asset-brief.md`) untuk mum/dad/sister supaya dunia game rasa konsisten — pelajar nampak "keluarga yang sama" merentasi modul berlainan.

## Audio (16 klip dialog NPC, format cadangan: MP3)

Setiap `npcLine`/`audioScript` perlu jadi audio. Loghat & tempo sama seperti Modul 1 (UK English neutral, perlahan & jelas).

**Nota khas item sb008:** Tiada dialog NPC — ini senario visual sahaja (pelajar nampak watak kelihatan bingung mencari pensel), pelajar perlu inisiatif pilih respons yang sesuai. Tak perlukan audio untuk item ni, hanya visual cue.

## Nota Reka Bentuk Penting untuk Claude Code

1. **Binary preference items** (sb006, sb007, sb013, sb015) — KEDUA-DUA pilihan jawapan adalah betul (bukan satu betul satu salah). Logik scoring kena berbeza sikit daripada Modul 1 — sistem terima mana-mana satu, bukan padan ke satu jawapan tetap sahaja. Ini sebab DSKP fokus pada *kebolehan menyatakan preferensi*, bukan preferensi "betul".
2. Reuse struktur UI/interaction daripada Modul 1 (audio playback, tap-to-answer, feedback, hint, PL scoring) — cuma tukar sumber data & jenis validasi (binary-accept vs single-correct).
3. Komponen dialog-box/speech-bubble UI boleh jadi reusable component untuk semua modul Speaking akan datang (Tahun 2-6).
