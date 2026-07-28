#!/usr/bin/env bash
# ApertureScienceOS ISO Build Script

set -e

ORANGE='\033[38;2;255;153;0m'
NC='\033[0m'

echo -e "${ORANGE}====================================================${NC}"
echo -e "${ORANGE}   APERTURE SCIENCE LABORATORIES - ISO BUILDER     ${NC}"
echo -e "${ORANGE}====================================================${NC}"

if [ "$EUID" -ne 0 ]; then
  echo -e "\033[0;31mError: Must be run as root (sudo ./build.sh)\033[0m"
  exit 1
fi

if ! command -v mkarchiso &> /dev/null; then
    echo -e "\033[0;31mError: archiso is not installed.\033[0m"
    exit 1
fi

WORK_DIR="/tmp/aperture-os-build-tmp"
OUT_DIR="$(pwd)/out"

echo -e "${ORANGE}[1/3] Cleaning build directories...${NC}"
rm -rf "$WORK_DIR"
mkdir -p "$OUT_DIR"

echo -e "${ORANGE}[2/3] Compiling ApertureScienceOS ISO...${NC}"
mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" .

echo -e "${ORANGE}[3/3] ApertureScienceOS successfully built!${NC}"
echo -e "Location: $OUT_DIR"
ls -lh "$OUT_DIR"
