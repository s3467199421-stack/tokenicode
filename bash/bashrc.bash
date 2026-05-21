# TokeniCode - Bash Configuration
# ===============================

# --- History ---
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:ignorespace

# --- Source components ---
TOKENICODE="$HOME/.tokenicode"
[ -f "$TOKENICODE/aliases/common.zsh" ] && source "$TOKENICODE/aliases/common.zsh"
[ -f "$TOKENICODE/themes/prompt.zsh" ] && source "$TOKENICODE/themes/prompt.zsh"

# --- Completions ---
if command -v complete &>/dev/null; then
  complete -cf sudo
fi
