# omz: main settings
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
ZSH_CUSTOM="$XDG_DATA_HOME/oh-my-zsh-custom"
ZSH_CACHE_DIR="$XDG_CACHE_HOME/oh-my-zsh"

# omz: plugins
plugins=(
    # built-in
    colored-man-pages
    command-not-found
    dirhistory
    fzf
    pip
    poetry
    npm
    nvm
    rust
    starship
    sudo
    # custom
    autoswitch_virtualenv
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# omz: platform specific settings
if uname -a | grep -q "Darwin"; then
    export LC_ALL="en_GB.UTF-8"
    plugins+=(brew iterm2)
    zstyle :omz:plugins:iterm2 shell-integration yes
fi
if uname -a | grep -q "Linux"; then
    export LC_ALL="C.utf8"
    plugins+=(ufw)
fi
if uname -a | grep -q "[-]microsoft"; then
    path+=("/mnt/c/program files/openssh")
    alias ssh="ssh.exe"
    alias ssh-add="ssh-add.exe"
fi

# omz: update settings
zstyle ':omz:update' mode disabled

# omz: history settings
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=9999999
SAVEHIST=9999999
HIST_STAMPS="dd.mm.yyyy"

# omz: misc
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

# path
path+=("$HOME/.local/bin")

source $ZSH/oh-my-zsh.sh

# aliases
alias ls="eza --all --all --long --header --binary --git --dereference --icons"

# misc
EDITOR="nano"

# ensure 'path' and 'PATH' don't have duplicate values
typeset -U PATH
