# xdg base dirs
XDG_CONFIG_HOME="$HOME/.config"
XDG_CACHE_HOME="$HOME/.cache"
XDG_DATA_HOME="$HOME/.local/share"
XDG_STATE_HOME="$HOME/.local/state"

for _dir in "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME"; do
    [ -d "$_dir" ] || mkdir -p "$_dir"
done

export XDG_CONFIG_HOME XDG_CACHE_HOME XDG_DATA_HOME XDG_STATE_HOME

# xdg_config_home
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"

# xdg_cache_home
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NUGET_PACKAGES="$XDG_CACHE_HOME/nuget"

# xdg_data_home
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# xdg_state_home
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/history"
export PSQL_HISTORY="$XDG_STATE_HOME/psql/history"
export REDISCLI_HISTFILE="$XDG_STATE_HOME/redis/history"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# misc
export MIX_XDG="true"
