#!/bin/bash
PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LOG_FILE="$PROJECT_DIR/output/monitoring.log"

mkdir -p "$PROJECT_DIR/output"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "=================================="
echo "     MONITORING SISTEM LINUX"
echo "=================================="

echo ""
echo "Waktu Monitoring:"
date

echo ""
echo "========== PENGGUNAAN RAM =========="
free -h

echo ""
echo "========== PENGGUNAAN CPU =========="
mpstat 1 1

echo ""
echo "========== PROSES BERJALAN =========="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 10

echo ""
echo "=================================="
echo "       MONITORING SELESAI"
echo "=================================="
