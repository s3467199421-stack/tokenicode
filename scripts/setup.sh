#!/usr/bin/env bash
# TokeniCode - Setup Script
# ==========================

TOKENICODE_HOME="$HOME/.tokenicode"
BACKUP_DIR="$HOME/.tokenicode_backup_$(date +%Y%m%d_%H%M%S)"

echo "==> TokeniCode Setup"
echo ""

# Detect shell
CURRENT_SHELL=$(basename "$SHELL" 2>/dev/null || echo "unknown")

echo "[1/3] Backing up existing configs..."
mkdir -p "$BACKUP_DIR"
[ -f "$HOME/.zshrc" ] && cp "$HOME/.zshrc" "$BACKUP_DIR/" && echo "  - backed up .zshrc"
[ -f "$HOME/.bashrc" ] && cp "$HOME/.bashrc" "$BACKUP_DIR/" && echo "  - backed up .bashrc"
[ -f "$HOME/.bash_profile" ] && cp "$HOME/.bash_profile" "$BACKUP_DIR/" && echo "  - backed up .bash_profile"

echo "[2/3] Symlinking configs..."
[ -f "$TOKENICODE_HOME/zsh/zshrc.zsh" ] && ln -sf "$TOKENICODE_HOME/zsh/zshrc.zsh" "$HOME/.zshrc" && echo "  - linked .zshrc"
[ -f "$TOKENICODE_HOME/bash/bashrc.bash" ] && ln -sf "$TOKENICODE_HOME/bash/bashrc.bash" "$HOME/.bashrc" && echo "  - linked .bashrc"

echo "[3/3] Applying to current shell..."
case "$CURRENT_SHELL" in
  zsh) source "$HOME/.zshrc" 2>/dev/null && echo "  - applied zsh config" ;;
  bash) source "$HOME/.bashrc" 2>/dev/null && echo "  - applied bash config" ;;
  *) echo "  - shell '$CURRENT_SHELL' not recognized, please reload manually" ;;
esac

echo ""
echo "==> Done! Backup saved to: $BACKUP_DIR"
echo "==> Reload your shell or run: exec $CURRENT_SHELL"
