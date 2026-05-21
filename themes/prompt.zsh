# TokeniCode - Prompt Theme
# ==========================

# Simple & clean prompt
# Format: [user@host] ~/path

autoload -U colors && colors

# Git branch function
git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null || echo ""
}

# Prompt
PROMPT='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} '
PROMPT2='%{$fg[red]%}%_%{$reset_color%}> '

# Git info in RPROMPT
RPROMPT='$(git_branch)'
