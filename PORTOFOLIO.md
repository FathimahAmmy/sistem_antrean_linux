# PORTOFOLIO KONTRIBUSI ANGGOTA 2
## Proyek Sistem Antrean Berbasis Linux

### 1. Identitas

- **Nama:** Fathimah Asrining Nurcahya Pertiwi
- **NIM:** 2510512199
- **Kelompok:** 4
- **Judul Proyek:** Sistem Antrean Berbasis Linux
- **Peran:** Anggota 2 – Pengembangan Antrean, Worker, File Lock, dan Integrasi Sistem Status.

**Keterangan Pengerjaan:**

Pengerjaan tugas Anggota 2 dilakukan secara berkelompok oleh dua orang. Seluruh proses pengerjaan, mulai dari penulisan kode, pengembangan script, pengujian, hingga integrasi ke GitHub, dilakukan secara bersama-sama dengan menggunakan satu perangkat laptop yang sama, yaitu laptop milik saya.

Penggunaan satu laptop dilakukan karena rekan satu tim mengalami kendala pada laptop pribadinya, khususnya dalam menjalankan lingkungan Linux yang dibutuhkan untuk pengerjaan proyek. Oleh karena itu, saya meminjamkan laptop saya agar proses pengerjaan dapat tetap berlangsung. Kami bekerja sama secara langsung dalam menyelesaikan tugas dan melakukan pengujian proyek.

### 2. Asal Proyek

Proyek ini merupakan bagian dari tugas kelompok pengembangan Sistem Antrean Berbasis Linux.

**Repository GitHub:**

https://github.com/kelompok-sistem-antrean-linux/sistem_antrean_linux

Proyek ini bertujuan untuk membuat sistem antrean pekerjaan menggunakan Bash Shell Script dengan menerapkan konsep FIFO, worker, file locking, dan pemantauan status pekerjaan.

### 3. Kontribusi Pribadi

Dalam pengerjaan bagian Anggota 2, saya bekerja sama dengan satu rekan untuk mengembangkan dan mengintegrasikan sistem antrean.

Kontribusi yang dikerjakan bersama meliputi:

**A. Implementasi FIFO**

Membuat mekanisme antrean menggunakan metode First In, First Out (FIFO), sehingga pekerjaan diproses berdasarkan urutan masuk.

**B. Pengembangan Worker**

Mengembangkan `worker.sh` untuk mengambil pekerjaan dari antrean, menjalankan pekerjaan, dan menghapus pekerjaan dari antrean apabila berhasil diproses.

**C. Implementasi File Locking**

Menggunakan perintah `flock` untuk mengatur akses terhadap file antrean dan mencegah beberapa worker memproses antrean secara bersamaan.

**D. Script Penambahan Antrean**

Mengembangkan `tambah_antrean.sh` untuk menambahkan pekerjaan ke antrean serta memberikan ID unik pada setiap pekerjaan.

**E. Integrasi Sistem Status**

Menghubungkan worker dengan `monitoring/status.sh` agar setiap pekerjaan memiliki status:
- `waiting`
- `running`
- `success`
- `failed`

**F. Pengujian dan Dokumentasi**

Melakukan pengujian FIFO, keberhasilan pekerjaan, kegagalan pekerjaan, dan retry. Hasil pengujian didokumentasikan dalam `anggota2/dokumentasi/hasil-pengujian.md`.

### 4. Bukti Kontribusi

Kontribusi pengerjaan dapat diperiksa melalui repository GitHub kelompok:

https://github.com/kelompok-sistem-antrean-linux/sistem_antrean_linux

Bukti kontribusi yang dapat ditampilkan meliputi:

1. Branch pengembangan `anggota-2-integrasi-status`.
2. Commit `cf2284b` dengan pesan `Integrate worker queue with job status system`.
3. Pull Request integrasi worker dan sistem status yang telah di-merge ke branch `main`.
4. File implementasi worker, penambahan antrean, dan sistem status.
5. Dokumentasi hasil pengujian pada `anggota2/dokumentasi/hasil-pengujian.md`.

Bukti visual yang disertakan:
- Screenshot kode `worker.sh`.
<img width="807" height="722" alt="image" src="https://github.com/user-attachments/assets/9963c15a-19ae-43d0-9a18-5441126c14b6" />
<img width="884" height="719" alt="image" src="https://github.com/user-attachments/assets/6420bff6-aab4-459b-9744-3a2419d2cb89" />
<img width="883" height="710" alt="image" src="https://github.com/user-attachments/assets/e98099ca-6ddd-49db-98c4-48f96d667df6" />

- Screenshot kode `tambah_antrean.sh`.
<img width="878" height="562" alt="image" src="https://github.com/user-attachments/assets/7668ae45-bcee-4607-8bb1-8a546a37cb78" />
<img width="824" height="569" alt="image" src="https://github.com/user-attachments/assets/56b54220-908c-4c2f-84cf-915205679bdb" />

- Screenshot kode `monitoring/status.sh`.
<img width="815" height="704" alt="image" src="https://github.com/user-attachments/assets/58eb1b0a-73f8-487d-a4fa-6ee7e97c8376" />
<img width="800" height="731" alt="image" src="https://github.com/user-attachments/assets/4ce48370-1c8e-451f-b783-f7edd02108af" />
<img width="775" height="751" alt="image" src="https://github.com/user-attachments/assets/2ed834af-7f9c-4e3e-8fab-db8f5bf50602" />
<img width="697" height="443" alt="image" src="https://github.com/user-attachments/assets/18adaa7f-a043-4b61-99ff-cbf51b259650" />
  
- Screenshot pengujian FIFO.
<img width="876" height="564" alt="image" src="https://github.com/user-attachments/assets/29a86cc8-0603-46e2-9bff-580fdead54c5" />

- Screenshot status pekerjaan `success` dan `failed`.
  <img width="849" height="171" alt="image" src="https://github.com/user-attachments/assets/6e1641ba-c97b-46fd-8138-b9b44a269a74" />

- Screenshot pengujian retry.
<img width="910" height="729" alt="image" src="https://github.com/user-attachments/assets/f614d5dd-141b-4512-8dd7-fb25131646f4" />
<img width="916" height="459" alt="image" src="https://github.com/user-attachments/assets/5302d7ca-a7af-4e43-98c0-73ee3c2fc0d2" />

- Screenshot Pull Request GitHub yang menunjukkan status merged.
<img width="917" height="617" alt="image" src="https://github.com/user-attachments/assets/1bcaa1ed-4332-474c-9fef-f2814e629527" />


### 5. Skenario Individu

**Tujuan Pengujian:**

Memastikan sistem antrean dapat memproses pekerjaan secara berurutan, menghindari pemrosesan bersamaan oleh worker, serta memantau status setiap pekerjaan.

**Langkah Pengujian:**

1. Menambahkan tiga pekerjaan, yaitu Pekerjaan A, Pekerjaan B, dan Pekerjaan C.
2. Memastikan ketiga pekerjaan masuk ke antrean dengan status `waiting`.
3. Menjalankan worker untuk memproses pekerjaan.
4. Memastikan urutan pemrosesan sesuai FIFO.
5. Memeriksa perubahan status pekerjaan menjadi `running` dan `success`.
6. Melakukan simulasi kegagalan dengan exit code 7.
7. Memastikan pekerjaan yang gagal tetap berada di antrean.
8. Memulihkan script pekerjaan dan menjalankan worker kembali untuk menguji retry.

**Hasil Pengujian:**

- Pekerjaan A, B, dan C berhasil diproses sesuai urutan.
- Status pekerjaan berubah dari `waiting` menjadi `running`, kemudian `success`.
- Pengujian kegagalan menghasilkan status `failed` dengan exit code 7.
- Pekerjaan yang gagal tetap tersimpan di antrean.
- Setelah dilakukan retry, pekerjaan berhasil diproses dan status akhirnya menjadi `success` dengan exit code 0.
- Antrean menjadi kosong setelah semua pekerjaan berhasil diselesaikan.

### 6. Analisis Konsep Sistem Operasi

Pengerjaan bagian Anggota 2 berkaitan dengan beberapa konsep Sistem Operasi.

**A. Manajemen Proses**

Worker menjalankan pekerjaan sebagai proses di Linux. Setiap pekerjaan dieksekusi melalui script Bash dan memiliki proses yang dapat diidentifikasi menggunakan PID.

**B. Sinkronisasi dan Mutual Exclusion**

Penggunaan `flock` merupakan penerapan konsep sinkronisasi untuk mengatur akses terhadap sumber daya bersama. Lock membantu mencegah worker lain mengakses dan memproses antrean secara bersamaan.

**C. Manajemen Antrean**

Metode FIFO menunjukkan pengelolaan antrean berdasarkan urutan kedatangan pekerjaan. Pekerjaan yang masuk lebih awal diproses lebih dahulu.

**D. Status Proses dan Exit Status**

Sistem status digunakan untuk memantau tahapan pekerjaan. Exit status digunakan untuk membedakan pekerjaan yang berhasil dan gagal dijalankan.

**E. Manajemen File dan Hak Akses**

Penggunaan file antrean, file lock, serta pengaturan permission berkaitan dengan pengelolaan file dan keamanan akses pada sistem Linux.

### 7. Kendala dan Penyelesaian

Selama pengerjaan proyek, terdapat kendala pada perangkat laptop milik rekan satu tim. Laptop tersebut mengalami kesulitan dalam menjalankan lingkungan Linux yang dibutuhkan untuk pengembangan dan pengujian Bash Shell Script.

Untuk mengatasi kendala tersebut, saya meminjamkan laptop saya agar pengerjaan dapat dilakukan menggunakan satu perangkat yang sama. Kami kemudian menggunakan Google Cloud Shell sebagai lingkungan kerja Linux untuk menulis script, menjalankan pengujian, memeriksa antrean, serta mengelola repository GitHub.

Dengan menggunakan satu laptop, kami dapat bekerja secara langsung dan saling membantu dalam menyelesaikan tugas Anggota 2.

Kendala lainnya adalah proses integrasi antara worker dan sistem status. Pada awalnya, worker hanya memproses pekerjaan dan belum memperbarui status secara otomatis.

Penyelesaian dilakukan dengan menambahkan ID unik pada setiap pekerjaan dan menghubungkan script worker dengan `monitoring/status.sh`. Setelah integrasi, perubahan status pekerjaan dapat dicatat secara otomatis.

### 8. Refleksi

Melalui pengerjaan proyek ini, saya memperoleh pengalaman dalam bekerja sama mengembangkan sistem berbasis Linux menggunakan Bash Shell Script.

Saya juga memahami penerapan metode FIFO, penggunaan worker untuk menjalankan pekerjaan secara otomatis, konsep sinkronisasi melalui `flock`, pengelolaan status proses, serta penggunaan Git dan GitHub untuk kolaborasi dan integrasi kode.

Selain memperoleh pemahaman teknis, pengerjaan bersama menggunakan satu laptop juga mengajarkan pentingnya kerja sama, komunikasi, dan saling membantu ketika menghadapi kendala perangkat.

Secara keseluruhan, proyek ini memberikan pengalaman praktis dalam menerapkan konsep Sistem Operasi ke dalam program berbasis Linux serta meningkatkan kemampuan bekerja secara kolaboratif.
