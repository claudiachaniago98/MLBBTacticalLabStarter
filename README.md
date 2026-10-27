# MLBB Tactical Lab — Starter Website

Website statis interaktif untuk hero counter, draft lab, item counter logic, dan rotasi. Dibuat sebagai fondasi proyek sendiri, bukan salinan kode atau database mlcounters.app.

## Isi paket
- `index.html` — halaman utama
- `styles.css` — dark UI, animasi, responsive layout, reduced-motion support
- `app.js` — pencarian hero, filter role/tipe, counter finder, draft builder dua tim, item situational checklist, toggle tema
- `data/heroes.json` — dataset referensi awal
- `README.md` — petunjuk penggunaan dan deployment

## Penting sebelum publikasi
Versi ini **belum siap diklaim sebagai database lengkap/live**. Dataset adalah seed/reference data yang perlu diverifikasi, dilengkapi menjadi seluruh roster saat ini, dan dicocokkan dengan patch aktif. Tidak ada API statistik MLBB, win rate live, auto-update patch, atau data map 2026 yang telah tersambung. Jangan mengiklankan fitur tersebut sebagai aktif sampai pipeline dan sumbernya benar-benar tersedia.

## Jalankan lokal
Karena aplikasi mengambil `data/heroes.json` dengan `fetch`, jalankan lewat local web server, bukan membuka `index.html` langsung melalui `file://`.

### Opsi A — Python
Di folder ini jalankan:
```bash
python -m http.server 8080
```
Lalu buka `http://localhost:8080`.

### Opsi B — Node.js
```bash
npx serve .
```
Buka URL lokal yang ditampilkan.

## Deploy ke hosting statis
Folder ini dapat diunggah ke Netlify, Cloudflare Pages, GitHub Pages, atau hosting static lain:
- Build command: kosong / none
- Publish directory: root folder proyek
- Pastikan `index.html`, `app.js`, `styles.css`, dan folder `data/` ikut diunggah.

Untuk domain sendiri, hubungkan domain melalui dashboard penyedia hosting dan atur DNS sesuai instruksi mereka. Domain/hosting tidak dibeli atau dikonfigurasi otomatis oleh ZIP ini.

## Menambah atau memperbarui hero
Edit `data/heroes.json`. Format:
```json
{
  "id": "hero-id",
  "name": "Nama Hero",
  "roles": ["Roam", "EXP Lane"],
  "type": "Fighter",
  "difficulty": "Medium",
  "specialties": ["CC", "Sustain"],
  "counters": ["Nama Hero Counter"],
  "synergy": ["Nama Hero Sinergi"],
  "notes": "Catatan strategi"
}
```
Pastikan ID unik. Nama dalam `counters` dan `synergy` harus konsisten dengan nama hero dalam database. Setelah edit, refresh website.

## Rencana production yang direkomendasikan
1. Sahkan sumber data dan hak penggunaan artwork/statistik.
2. Lengkapi roster, skill, item, patch, dan konfigurasi map dari sumber yang dapat digunakan secara sah.
3. Bangun pipeline impor data dan panel admin dengan audit trail.
4. Buat model matchup dan synergy yang dapat diuji.
5. Tambahkan format ban-pick resmi untuk tiap mode/kompetisi.
6. Latih dan kalibrasi model probabilitas dengan data pertandingan berlabel; tampilkan ketidakpastian.
7. Uji di desktop/mobile, keamanan, aksesibilitas, performa, SEO, dan monitoring.
8. Baru setelah validasi, tampilkan label “patch terbaru” atau persentase peluang menang.

## Catatan merek
Proyek fan-made tidak resmi. Mobile Legends: Bang Bang dan aset terkait dimiliki pemegang haknya masing-masing. Gunakan logo/artwork hanya jika memiliki izin atau lisensi yang sesuai.
