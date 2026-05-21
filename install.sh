#!/usr/bin/env bash
# TokeniCode - Quick Install
# ===========================
# Run: curl -fsSL https://raw.githubusercontent.com/s3467199421-stack/tokenicode/main/install.sh | bash

set -e

REPO="https://github.com/s3467199421-stack/tokenicode.git"
INSTALL_DIR="$HOME/.tokenicode"

echo "==> Cloning TokeniCode..."
git clone --depth=1 "$REPO" "$INSTALL_DIR"

cd "$INSTALL_DIR"
bash scripts/setup.sh
