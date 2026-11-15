# Dokumentasi Kontribusi Anggota 5

## 1. Tanggung Jawab

Anggota 5 bertanggung jawab pada monitoring sistem, pengaturan hak akses, pembuatan laporan, dan aktivitas Docker dalam proyek Sistem Antrean Pekerjaan dan Monitoring Proses Linux.

## 2. Monitoring Sistem Linux

Monitoring dilakukan untuk mengamati penggunaan sumber daya sistem, meliputi:

- CPU: mengamati penggunaan prosesor.
- RAM: mengamati penggunaan memori.
- Proses: menampilkan proses yang sedang berjalan.

Script monitoring dibuat pada `monitoring/monitoring.sh` dan dapat dijalankan secara otomatis. Hasil monitoring juga dicatat ke `output/monitoring.log`.

## 3. Pengaturan Hak Akses

Pengaturan hak akses menggunakan group `kelompok_proyek`.

Pengujian dilakukan menggunakan dua akun:

- `anggota1`: berhasil mengakses direktori proyek.
- `tamu`: ditolak ketika mencoba mengakses direktori proyek tanpa izin.

Pengujian ini menunjukkan penerapan permission Linux untuk membatasi akses pengguna.

## 4. Persiapan Docker

Docker Engine versi 29.1.3 telah dipasang dan berhasil dijalankan.

Image Alpine Linux dengan tag `alpine:3.22` juga telah diunduh sebagai persiapan pengujian bind mount read-only.

## 5. Pekerjaan yang Belum Selesai

Beberapa pekerjaan masih menunggu integrasi dengan sistem antrean kelompok, yaitu:

- Pembuatan laporan `output/laporan.txt`.
- Integrasi hasil monitoring dengan sistem antrean.
- Pengujian Docker untuk membaca laporan.
- Pengujian penolakan penulisan melalui bind mount read-only.
- Verifikasi checksum sebelum dan sesudah pengujian.
- Pembuatan PORTOFOLIO.md pada repository pribadi.

## 6. Kesimpulan

Kontribusi awal Anggota 5 telah mencakup monitoring sistem Linux, pencatatan log otomatis, pengaturan hak akses, serta persiapan Docker. Tahap berikutnya adalah mengintegrasikan komponen tersebut dengan sistem antrean pekerjaan kelompok.
