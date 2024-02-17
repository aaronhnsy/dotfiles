# oh-my-zsh: main settings
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export ZSH_CUSTOM="$XDG_DATA_HOME/oh-my-zsh-custom"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/oh-my-zsh"
plugins=(
	command-not-found
	iterm2
	npm
	nvm
	pip
	poetry
	python
	rust
	starship
	sudo
	ufw
	autoswitch_virtualenv
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# oh-my-zsh: update settings
zstyle ':omz:update' mode disabled

# oh-my-zsh: completion settings
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh: automatic title
DISABLE_AUTO_TITLE="true"

# oh-my-zsh: library settings
HIST_STAMPS="%d/%m/%Y"
HISTFILE="$XDG_STATE_HOME/zsh/history"


source $ZSH/oh-my-zsh.sh


# path
typeset -U path
path+=("$HOME/.local/bin")

# aliases
alias ls="ls -lah --color"

# wsl
if uname -a | grep -q "[-]microsoft"; then
    path+=("/mnt/c/windows/system32/openssh")
    alias ssh="ssh.exe"
    alias ssh-add="ssh-add.exe"
    export LC_ALL="C.utf8"
fi
# general
if uname -a | grep -q "[-]generic"; then
    export LC_ALL="C.utf8"
fi
# macos
if uname -s | grep -q "Darwin"; then
    export LC_ALL="en_GB.utf8"
fi

