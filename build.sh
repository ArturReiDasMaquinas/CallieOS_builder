#!/usr/bin/env bash
# CallieOS ISO Build Script

set -e

MAGENTA='\033[38;2;255;105;180m'
NC='\033[0m'

echo -e "${MAGENTA}====================================================${NC}"
echo -e "${MAGENTA}            CallieOS - ISO BUILDER                  ${NC}"
echo -e "${MAGENTA}====================================================${NC}"

if [ "$EUID" -ne 0 ]; then
  echo -e "\033[0;31mError: Must be run as root (sudo ./build.sh)\033[0m"
  exit 1
fi

if ! command -v mkarchiso &> /dev/null; then
    echo -e "\033[0;31mError: archiso is not installed.\033[0m"
    exit 1
fi

WORK_DIR="/tmp/callie-os-build-tmp"
OUT_DIR="$(pwd)/out"

echo -e "${MAGENTA}[1/3] Cleaning build directories...${NC}"
rm -rf "$WORK_DIR"
mkdir -p "$OUT_DIR"

echo -e "${MAGENTA}[2/3] Compiling CallieOS ISO...${NC}"
mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" .

echo -e "${MAGENTA}[3/3] CallieOS successfully built!${NC}"
echo -e "Location: $OUT_DIR"
ls -lh "$OUT_DIR"
