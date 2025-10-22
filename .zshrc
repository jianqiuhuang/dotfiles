# --- ZSH PROMPT SETTINGS ---

# 1. Enable PROMPT_SUBST so variables are updated
setopt PROMPT_SUBST

# 2. Load vcs_info (Version Control System)
autoload -Uz vcs_info

# 3. Run vcs_info before each prompt
autoload -Uz add-zsh-hook
add-zsh-hook precmd vcs_info

# 4. Set the format for git info
#    This will format the branch to look like: " (main)" in red
zstyle ':vcs_info:git:*' formats ' (%F{red}%b%f)'

# 5. Set the PS1 (the prompt)
#    Zsh requires LITERAL newlines inside double quotes, not "\n".
PS1="
%B%F{blue} ┌ (%B%F{cyan}%n%B%F{blue})%B%F{green} /%2c${vcs_info_msg_0_} %B%F{yellow}%T%B%F{blue}
 └─>%f%b "

# --- END OF PROMPT SETTINGS ---

# Git command aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
