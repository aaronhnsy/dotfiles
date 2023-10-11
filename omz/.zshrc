export ZSH="$HOME/.oh-my-zsh"

ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
ZSH_COMPDUMP="$ZSH_CACHE_DIR/zcompdump-$SHORT_HOST-$ZSH_VERSION"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 5

plugins=(
    git
    sudo
    python
    poetry
    command-not-found
    autoswitch_virtualenv
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# path
typeset -aU path
path+=("/home/axel/.local/bin")
path+=("/opt/jdk-17.0.8+7/bin")

# aliases
alias ls="ls -lah"
alias javaver="sudo update-alternatives --config java"
alias pyver="sudo update-alternatives --config python"
alias pip="python -m pip"

# node version manager
source "$HOME/.nvm/nvm.sh"
source "$HOME/.nvm/bash_completion"

# starship
eval "$(starship init zsh)"

# wsl 1password support
if uname -r | grep -q 'microsoft'; then
    path+=("/mnt/c/program files/npiperelay")
    source "$HOME/.1password/ssh-agent.sh"
fi
