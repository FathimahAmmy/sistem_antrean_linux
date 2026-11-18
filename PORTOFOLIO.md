# PORTOFOLIO INDIVIDU
## PROYEK SISTEM ANTREAN LINUX

### 1. Identitas

- Nama: Fathimah Asrining
- NIM: 2510512199
- Kelompok: 5B
- Posisi Anggota: Anggota 2A
- Judul Proyek: Sistem Antrean Linux
- Mata Kuliah: Sistem Operasi

### 2. Asal Proyek

Proyek Sistem Antrean Linux merupakan proyek kelompok yang dibuat untuk menerapkan konsep sistem operasi menggunakan lingkungan Linux dan pemrograman Bash.

**Repository utama:**

https://github.com/kelompok-sistem-antrean-linux/sistem_antrean_linux

**Anggota kelompok:**
1. Muhammad Rijal - Anggota 1
2. Fathimah Asrining – Anggota 2A
3. Jennar Iqlima – Anggota 2B
4. Muhammad Haikal - Anggota 3
5. Aghna Biwalaki - Anggota 4
6. Made Dwi - Anggota 5

### 3. Kontribusi Pribadi

Dalam proyek Sistem Antrean Linux, saya bertanggung jawab mengembangkan fitur **FIFO (First In, First Out)** pada file `scripts/worker.sh`.

FIFO merupakan mekanisme antrean yang memproses pekerjaan berdasarkan urutan masuk. Pekerjaan yang masuk lebih dahulu akan diproses terlebih dahulu.

Kontribusi yang saya lakukan meliputi:

1. Mengambil daftar pekerjaan dari direktori `queue/waiting`.
2. Mengurutkan daftar pekerjaan berdasarkan nama file menggunakan perintah `sort`.
3. Memproses pekerjaan secara berurutan menggunakan perulangan `for`.
4. Memindahkan pekerjaan dari direktori `waiting` ke `running` ketika mulai diproses.
5. Memindahkan pekerjaan ke direktori `done` setelah proses selesai.
6. Mencatat status, kode keluar, serta waktu mulai dan selesai pekerjaan ke dalam `jobs_status.csv`.
7. Menambahkan informasi proses FIFO ke dalam log.

### 4. Bukti Kontribusi

Kontribusi saya dapat dibuktikan melalui beberapa bagian berikut:

**A. Source Code**

File yang dikerjakan:

`scripts/worker.sh`

Bagian utama yang menjadi kontribusi saya adalah pengambilan dan pemrosesan pekerjaan secara berurutan menggunakan FIFO.
<img width="1138" height="655" alt="image" src="https://github.com/user-attachments/assets/c99a67de-5b35-4886-a6cd-bf5f77797b0b" />


**B. Bukti Pengujian**

File bukti pengujian yang dibuat:

- `evidence/ammy-positif.txt`
- `evidence/ammy-kosong.txt`

**C. Bukti Commit GitHub**

- Commit Hash: `b52c15c`
- Commit Message: `feat(ammy): implementasi penjadwalan antrean berurutan FIFO`
- Branch: `main`

Link commit:

https://github.com/kelompok-sistem-antrean-linux/sistem_antrean_linux/commit/b52c15c

<img width="945" height="195" alt="image" src="https://github.com/user-attachments/assets/5c939593-7e28-49d6-a4d9-63744f19d588" />


### 5. Skenario Pengujian Individu

#### A. Pengujian Positif: Pemrosesan Antrean FIFO

**Tujuan:**

Memastikan sistem dapat memproses beberapa pekerjaan berdasarkan urutan masuk.

**Langkah Pengujian:**

1. Menjalankan perintah `bash scripts/reset_env.sh` untuk mengembalikan lingkungan antrean ke kondisi awal.
2. Menambahkan pekerjaan pertama menggunakan `bash scripts/submit_job.sh hitung_prima.sh 1`.
3. Menambahkan pekerjaan kedua menggunakan `bash scripts/submit_job.sh hitung_prima.sh 2`.
4. Menjalankan worker menggunakan `bash scripts/worker.sh`.
5. Memeriksa hasil pemrosesan melalui file `logs/jobs_status.csv`.

<img width="878" height="74" alt="image" src="https://github.com/user-attachments/assets/60dd6d70-378c-478e-8fcb-f16da6456266" />
<img width="1199" height="93" alt="image" src="https://github.com/user-attachments/assets/67c4a835-c8ad-428f-a5e4-ddbb51e7ad27" />


**Hasil Pengujian:**

Berdasarkan hasil pengujian, kedua pekerjaan berhasil diproses secara berurutan. Pekerjaan pertama diproses lebih dahulu, kemudian pekerjaan kedua.

Keduanya tercatat memiliki status `DONE` dengan `EXIT_CODE 0`.

<img width="1350" height="241" alt="image" src="https://github.com/user-attachments/assets/ef7be714-ac96-41aa-b785-4cd5e029cc1d" />


**Verifikasi:**

Hasil dapat dilihat melalui file `evidence/ammy-positif.txt` dan `logs/jobs_status.csv`.

#### B. Pengujian Negatif: Antrean Kosong

**Tujuan:**

Memastikan sistem dapat menangani kondisi ketika tidak terdapat pekerjaan yang harus diproses.

**Langkah Pengujian:**

1. Setelah seluruh pekerjaan selesai diproses, menjalankan kembali perintah `bash scripts/worker.sh`.
2. Mengamati pesan yang ditampilkan oleh sistem.

**Hasil Pengujian:**

Sistem menampilkan pesan:

`[INFO] Antrean kosong. Tidak ada pekerjaan untuk diproses.`

Hal tersebut menunjukkan bahwa sistem dapat mengenali kondisi antrean kosong dan tidak melanjutkan proses pemrosesan pekerjaan.

<img width="821" height="41" alt="image" src="https://github.com/user-attachments/assets/eb07f92f-442a-4e21-9560-c894ab540b9d" />


**Verifikasi:**

Hasil dapat dilihat melalui file `evidence/ammy-kosong.txt`.

### 6. Analisis Konsep Sistem Operasi

Fitur FIFO yang dikembangkan dalam proyek ini berkaitan dengan beberapa konsep sistem operasi.

**A. Manajemen Proses**

Sistem menjalankan pekerjaan melalui proses yang dipanggil menggunakan Bash. Setiap pekerjaan diproses oleh worker sesuai urutan antrean.

**B. Penjadwalan Proses**

FIFO merupakan salah satu konsep penjadwalan yang menggunakan prinsip pekerjaan yang datang lebih dahulu akan dilayani lebih dahulu.

Dalam proyek ini, prinsip tersebut diterapkan dengan mengurutkan file pekerjaan sebelum diproses.

**C. Manajemen File dan Direktori**

Sistem menggunakan beberapa direktori untuk mengelompokkan pekerjaan berdasarkan statusnya, yaitu `waiting`, `running`, dan `done`.

Pemindahan file dilakukan untuk menunjukkan perubahan tahapan pemrosesan pekerjaan.

**D. Pencatatan Status Proses**

Sistem mencatat informasi pekerjaan ke dalam `jobs_status.csv`, seperti ID pekerjaan, nama pekerjaan, parameter, status, kode keluar, serta waktu mulai dan selesai.

### 7. Kendala dan Penyelesaian

Selama proses pengerjaan, terdapat kendala yang ditemukan ketika menjalankan pengujian.

Salah satu pesan yang muncul adalah:

`line 5: 21:16:06: command not found`

Pesan tersebut muncul ketika sistem membaca file pekerjaan. Meskipun demikian, berdasarkan hasil pengujian, kedua pekerjaan tetap berhasil diproses dan tercatat memiliki status `DONE` dengan kode keluar `0`.

Kendala tersebut menjadi bahan evaluasi untuk memeriksa kembali format isi file pekerjaan agar tidak menghasilkan pesan kesalahan ketika dibaca oleh Bash.

**Kendala lainnya:**

-

**Penyelesaian:**

-

### 8. Refleksi Individu

Melalui pengerjaan proyek Sistem Antrean Linux, saya memperoleh pemahaman mengenai penerapan konsep FIFO dalam sistem antrean menggunakan Bash.

Saya juga mempelajari penggunaan perulangan, pengurutan file, pemindahan file antar-direktori, serta pencatatan status pekerjaan menggunakan file CSV.

Konsep yang paling saya pahami dari pengerjaan ini adalah bagaimana sistem dapat memproses pekerjaan berdasarkan urutan masuknya.

Namun, saya masih perlu meningkatkan pemahaman mengenai manajemen proses Linux, pengelolaan file menggunakan Bash, serta penanganan kesalahan dalam proses eksekusi script.

### 9. Lampiran Dokumentasi

Dokumentasi yang perlu disertakan:

1. Screenshot source code FIFO pada `scripts/worker.sh`.
2. Screenshot proses penambahan dua pekerjaan ke antrean.
3. Screenshot hasil pengujian FIFO positif.
4. Screenshot hasil pengujian antrean kosong.
5. Screenshot commit dan push ke GitHub.
6. Screenshot struktur folder proyek.
