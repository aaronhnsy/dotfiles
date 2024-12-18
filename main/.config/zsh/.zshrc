ZSH="$XDG_DATA_HOME/oh-my-zsh"
ZSH_CUSTOM="$XDG_DATA_HOME/oh-my-zsh-custom"
ZSH_CACHE_DIR="$XDG_CACHE_HOME/oh-my-zsh"

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"
zstyle ':omz:update' mode disabled
zstyle ':omz:plugins:nvm' lazy yes

(( $+commands[starship] )) && eval "$(starship init zsh)"

plugins=(
    autoswitch_virtualenv
    colored-man-pages
    command-not-found
    dirhistory
    fzf
    iterm2
    pip
    poetry
    pyenv
    npm
    nvm
    rust
    sudo
    tailscale
    ufw
    nvm
    zsh-autosuggestions
    zsh-syntax-highlighting
)

fpath+=("$ZSH_CUSTOM/custom/plugins/zsh-completions/src")

[ -f "$ZDOTDIR/os-specific.sh" ] && source "$ZDOTDIR/os-specific.sh"

source "$ZDOTDIR/history.sh"
source "$ZSH/oh-my-zsh.sh"
source "$ZDOTDIR/aliases.sh"

