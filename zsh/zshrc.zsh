# TokeniCode - Zsh Configuration
# ===============================

# --- Options ---
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt CORRECT
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# --- History ---
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

# --- Plugins (load custom plugins) ---
source "$HOME/.tokenicode/aliases/common.zsh"
source "$HOME/.tokenicode/themes/prompt.zsh"

# --- Key bindings ---
bindkey -e
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# --- Auto-completion ---
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
