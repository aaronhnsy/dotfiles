export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)}"

# xdg config home
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export PSQLRC="$XDG_CONFIG_HOME/psql/psqlrc"
export REDISCLI_RCFILE="$XDG_CONFIG_HOME/redis/redisrc"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"

# xdg cache home
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export RUFF_CACHE_DIR="$XDG_CACHE_HOME/ruff"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NUGET_PACKAGES="$XDG_CACHE_HOME/nuget"

# xdg data home
export NVM_DIR="$XDG_DATA_HOME/nvm"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GRADLE_HOME="$GRADLE_USER_HOME"

# xdg state home
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/history"
export PSQL_HISTORY="$XDG_STATE_HOME/psql/history"
export REDISCLI_HISTFILE="$XDG_STATE_HOME/redis/history"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
alias wget="wget --hsts-file='$XDG_STATE_HOME/wget/history'"

# misc
export MIX_XDG="true"
export EDITOR="nano"