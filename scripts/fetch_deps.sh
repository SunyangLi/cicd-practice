#!/bin/bash
set -e

MATHLIB_URL="https://github.com/SunyangLi/cicd-practice/releases/download/mathlib-v1.0.0/mathlib-linux-x64-release.tar.gz"
VENDOR_DIR="vendor"

echo "Downloading mathlib..."
curl -sSL -o mathlib.tar.gz "$MATHLIB_URL"

echo "Extracting to ${VENDOR_DIR}/..."
mkdir -p "$VENDOR_DIR"
tar -xzf mathlib.tar.gz -C "$VENDOR_DIR"

rm mathlib.tar.gz
echo "Done. mathlib is ready in ${VENDOR_DIR}/"