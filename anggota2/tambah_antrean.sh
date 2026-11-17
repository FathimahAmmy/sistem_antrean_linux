#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$DIR/.." && pwd)"

cd "$DIR" || exit 1

ANTRIAN="antrean.txt"
LOCK="worker.lock"
STATUS="$ROOT/monitoring/status.sh"

umask 077

if [ -z "$1" ]; then
    echo "ERROR: Nama pekerjaan harus diisi."
    exit 1
fi

PEKERJAAN="$*"
JOB_ID="job_$(date +%s)_$$"

exec 9>"$LOCK"

if ! flock -x 9; then
    echo "ERROR: Gagal mendapatkan lock."
    exit 1
fi

touch "$ANTRIAN" || exit 1
chmod 600 "$ANTRIAN" || exit 1

if ! "$STATUS" init "$JOB_ID"; then
    echo "ERROR: Gagal membuat status pekerjaan."
    exit 1
fi

if ! printf '%s|%s\n' "$JOB_ID" "$PEKERJAAN" >> "$ANTRIAN"; then
    echo "ERROR: Gagal menambahkan pekerjaan."
    exit 1
fi

chmod 600 "$ANTRIAN"

echo "Berhasil menambahkan pekerjaan."
echo "JOB_ID: $JOB_ID"
echo "Nama: $PEKERJAAN"
echo "Status: waiting"
