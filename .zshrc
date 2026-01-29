# Load Zsh colors
autoload -Uz colors && colors

# Git branch parser
parse_git_branch() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n $branch ]] && echo " (%F{117}${branch}%f)"
}

# Prompt: pastel purple time, folder, git branch in pastel blue
setopt PROMPT_SUBST
export PS1='%F{183}%*%f %F{117}%1~%f$(parse_git_branch) $ '

# Aliases
alias ..='cd ..'
alias bi='brew install'
alias ga='git add'
alias gbo='git branch --sort=-committerdate'
alias gp='git pull'
alias gr='git rebase'
alias gs='git status'
alias ls='ls -G'
alias code='open -a "Visual Studio Code"'
