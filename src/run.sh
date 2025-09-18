#!/bin/bash
set -e

read -p "Target (nt 192.168.1.1): " TARGET
[ -z "$TARGET" ] && { echo "Error: Target missing!"; exit 1; }

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCAN_DIR="$SCRIPT_DIR/scan-results-$(date +%Y%m%d-%H%M)"
mkdir -p "$SCAN_DIR"

echo "[*] Starting Nmap: $TARGET"

sudo nmap --script="vulners,$SCRIPT_DIR/http-screenshot.nse" \
    --script-args "outdir=$SCAN_DIR,scriptdir=$SCRIPT_DIR" \
    -sS -sV -n -v "$TARGET" \
    -oA "$SCAN_DIR/scan" 

echo "[*] Generating HTML report"

xsltproc -o "$SCAN_DIR/report.html" "$SCRIPT_DIR/nmap-bootstrap.xsl" "$SCAN_DIR/scan.xml"

echo "[*] Report: $SCAN_DIR/report.html"

if command -v chromium >/dev/null 2>&1; then
    chromium "$SCAN_DIR/report.html" >/dev/null 2>&1 &
elif [ -f "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" ]; then
    "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" "$(wslpath -w "$SCAN_DIR/report.html")" &
else
    echo "[!] Open report: $SCAN_DIR/report.html"
fi
