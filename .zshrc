# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# OMZ plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/Users/abh1sheke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Aliases
mkcd() {
    mkdir $1 && cd $1
}

cdb() {
    BACK="../"
    if [[ "$1" == "" ]]
    then
        cd ../
    else
    for ((i = 0; i < $1 - 1; i++)); do
        BACK+="../"
    done;
    cd "$BACK"
    fi
}

## Git
alias gs="git status"
alias gita="git add"
alias gitc="git commit"
alias gitck="git checkout"

## Exa
alias l="exa -l -h"
alias la="exa -lg -h"
alias ls="exa"
alias lsr="exa -R"
alias lt="exa --tree"
alias lta="exa -l --tree -h"
alias lg="exa -l --git -h"

## Go
alias gorun="go run main.go"

## Nix
nixpi() {
    nix-env --install --attr nixpkgs.$1
}

## Pnpm
alias pnpmu="curl -fsSL https://get.pnpm.io/install.sh | sh -"
