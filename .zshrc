# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# OMZ plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# Aliases
alias gs="git status"
alias gcn="git commit --amend --no-edit"
alias nvm="nvim ."
alias nv="nvim"

