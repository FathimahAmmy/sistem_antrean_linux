# Hasil Pengujian Anggota 2 - 5B

## 1. Pengujian FIFO
Tiga pekerjaan dimasukkan ke antrean.
Worker berhasil menjalankan pekerjaan sesuai urutan masuk.

Hasil: LULUS

## 2. Pengujian Lock
Worker pertama berhasil memperoleh lock.
Worker kedua ditolak ketika lock sedang digunakan.

Hasil: LULUS

## 3. Pengujian Pekerjaan Gagal
Pekerjaan yang gagal dijalankan tetap tersimpan
di dalam antrean.

Hasil: LULUS

## 4. Pengujian Permission
File antrean menggunakan permission 600.
Pengujian akses pengguna lain dilakukan melalui Ubuntu.

Hasil: Bukti pengujian akses dilampirkan terpisah.

## 5. Commit Kontribusi
Commit terakhir: 4d4f718
Branch: anggota-2-antrean-lock

## Pengujian Integrasi Worker dan Sistem Status

### Pengujian berhasil
- Tiga pekerjaan berhasil ditambahkan ke antrean.
- Status berubah dari waiting menjadi running dan success.
- Pekerjaan diproses sesuai urutan FIFO: A, B, C.
- Antrean kosong setelah semua pekerjaan berhasil diproses.

### Pengujian kegagalan dan retry
- Pekerjaan disimulasikan gagal dengan exit code 7.
- Status berubah menjadi failed.
- Pekerjaan tetap berada di antrean setelah gagal.
- Setelah script dipulihkan, pekerjaan berhasil diproses ulang.
- Status akhir berubah menjadi success dengan exit code 0.

### Kesimpulan
Integrasi FIFO, worker, file lock, dan sistem status berhasil diuji, termasuk mekanisme retry pekerjaan yang gagal.
