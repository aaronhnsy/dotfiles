# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"

# Rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Elixir
export MIX_XDG="true"

# FFmpeg
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"

# Go
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# Node.js
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/history"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

# nuget
export NUGET_PACKAGES="$XDG_CACHE_HOME/nuget"

# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"

# PostgreSQL
export PSQL_HISTORY="$XDG_STATE_HOME/psql/history"

# pyenv
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"

# starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

# wakatime
export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"

# wget
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# less
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

