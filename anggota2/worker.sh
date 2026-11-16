#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR" || exit 1

ANTRIAN="antrean.txt"
LOCK="worker.lock"
LOG="worker.log"

# Memastikan file antrean tersedia
if [ ! -f "$ANTRIAN" ]; then
    echo "ERROR: File antrean tidak ditemukan."
    exit 1
fi

# Mengambil lock secara non-blocking
exec 9>"$LOCK"

if ! flock -n 9; then
    echo "DITOLAK: Worker lain sedang memproses antrean."
    exit 1
fi

echo "Worker berhasil mendapatkan lock."
echo "Worker mulai memproses antrean."

while [ -s "$ANTRIAN" ]; do

    PEKERJAAN="$(head -n 1 "$ANTRIAN")"

    if [ -z "$PEKERJAAN" ]; then
        break
    fi

    echo "Mengambil: $PEKERJAAN"
    echo "$(date '+%F %T') - Memproses: $PEKERJAAN" >> "$LOG"

    # Menghapus pekerjaan pertama dari antrean
    tail -n +2 "$ANTRIAN" > antrean.tmp || exit 1
    mv antrean.tmp "$ANTRIAN" || exit 1

    # Menjalankan pekerjaan dummy
    if ! ./pekerjaan_dummy.sh "$PEKERJAAN"; then
        echo "ERROR: $PEKERJAAN gagal dijalankan."
        exit 1
    fi

    echo "$(date '+%F %T') - Selesai: $PEKERJAAN" >> "$LOG"

done

echo "Antrean kosong."
echo "Worker selesai."
