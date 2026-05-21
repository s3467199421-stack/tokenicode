# TokeniCode - Common Aliases
# ============================

# --- File ops ---
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -i'
alias mkdir='mkdir -p'

# --- Git ---
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph'
alias gd='git diff'
alias gco='git checkout'

# --- Navigation ---
alias home='cd ~'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'

# --- Utilities ---
alias cat='bat 2>/dev/null || cat'
alias top='htop 2>/dev/null || top'
alias du='du -h'
alias df='df -h'
alias free='free -h'
alias ip='ip -c'
