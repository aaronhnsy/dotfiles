# oh-my-zsh: main settings
export ZSH="$XDG_DATA_HOME/omz"
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
ZSH_CUSTOM="$XDG_DATA_HOME/omz-custom"
ZSH_CACHE_DIR="$XDG_CACHE_HOME/omz"

# oh-my-zsh: update settings
zstyle ':omz:update' mode disabled

# oh-my-zsh: completion settings
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh: automatic title
DISABLE_AUTO_TITLE="true"

# oh-my-zsh: library settings
HIST_STAMPS="%d/%m/%Y"
HISTFILE="$XDG_STATE_HOME/zsh/history"


# iterm2
zstyle ':omz:plugins:iterm2' shell-integration yes

# locale
export LC_ALL="C.utf8"


source $ZSH/oh-my-zsh.sh


# path
typeset -U path
path+=("/home/axel/.local/bin")

# aliases
alias ls="ls -lah --color"
alias javaver="sudo update-alternatives --config java"
alias pyver="sudo update-alternatives --config python"
alias pip="python -m pip"

# wsl 1password support
if uname -r | grep -q 'microsoft'; then
	path+=("/mnt/c/windows/system32/openssh")
	alias ssh="ssh.exe"
	alias ssh-add="ssh-add.exe"
fi
