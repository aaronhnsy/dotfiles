# zsh
HISTFILE="$ZDOTDIR/.zsh_history"

# oh-my-zsh - main settings
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
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

# oh-my-zsh - update settings
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

# oh-my-zsh - completion settings
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh - automatic title
DISABLE_AUTO_TITLE="true"

# oh-my-zsh - library settings
HIST_STAMPS="yyyy-mm.dd"


# iterm2
zstyle ':omz:plugins:iterm2' shell-integration yes

# starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"


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
