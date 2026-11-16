# Kontribusi Anggota 2 - Antrean dan Lock

## Deskripsi
Bagian ini mengimplementasikan sistem antrean pekerjaan
menggunakan Bash pada Linux.

## Daftar File
- worker.sh: mengambil dan memproses pekerjaan dari antrean.
- pekerjaan_dummy.sh: simulasi pelaksanaan pekerjaan.
- antrean.txt: penyimpanan daftar pekerjaan.
- logs/: bukti hasil pengujian.

## Mekanisme FIFO
Worker mengambil pekerjaan dari baris pertama antrean.
Setelah pekerjaan diambil, baris tersebut dihapus dari antrean.
Dengan demikian, pekerjaan diproses berdasarkan urutan masuk
(First In, First Out).

## Mekanisme Lock
Program menggunakan flock dengan mode non-blocking.
Jika worker lain sedang memegang lock, worker berikutnya
akan ditolak sehingga tidak memproses antrean secara bersamaan.

## Pengujian
Pengujian dilakukan untuk memeriksa:
1. Urutan pemrosesan pekerjaan menggunakan FIFO.
2. Keberhasilan worker pertama memperoleh lock.
3. Penolakan worker kedua ketika lock sedang digunakan.
4. Permission file antrean menggunakan chmod 600.

Bukti keluaran pengujian disimpan di folder logs/.

## Catatan Integrasi
Modul ini merupakan kontribusi Anggota 2.
Integrasi dengan modul anggota lain dilakukan pada tahap
penggabungan sistem kelompok.
