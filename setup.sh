#!/bin/sh

git submodule --quiet foreach git submodule init

mkdir -p "$HOME/.cache"
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/share/"
mkdir -p "$HOME/.local/state"

stow_package() {
    NAME=$1; DIR=$2
    if [ -d "$DIR" ]; then
        echo "Package '$NAME' is already stowed."
    else
        mkdir -p "$DIR"
        stow "$NAME"
        echo "Created '$DIR' and stowed '$NAME'."
    fi
}
stow_package ssh "$HOME/.ssh/"
stow_package zsh "$HOME/.config/zsh/"
stow_package wget "$HOME/.config/wget/"
stow_package tmux "$HOME/.config/tmux/"
stow_package htop "$HOME/.config/htop/"
stow_package neofetch "$HOME/.config/neofetch/"
stow_package starship "$HOME/.config/starship/"

install_tool() {
    NAME=$1; URL=$2; DIR=$3
    if [ -d "$DIR" ]; then
        echo "Tool '$NAME' is already installed."
    else
        echo "Installing '$NAME':"
        git clone "$URL" "$DIR"
        cd "$DIR"
        git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
    fi
}
install_tool "pyenv" "https://github.com/pyenv/pyenv" "$HOME/.local/share/pyenv"
install_tool "nvm" "https://github.com/nvm-sh/nvm" "$HOME/.local/share/nvm"
