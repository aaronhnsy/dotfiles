# set miscellaneous env variables
set -gx LANG   "en_GB.UTF-8"
set -gx EDITOR "nano"

# ensure '~/.config' exists and set XDG_CONFIG_HOME
set _home_config "$HOME/.config"
test -d "$_home_config" || mkdir -p "$_home_config"
set -gx XDG_CONFIG_HOME "$_home_config"

# ensure '~/.cache' exists and set XDG_CACHE_HOME
set _home_cache "$HOME/.cache"
test -d "$_home_cache" || mkdir -p "$_home_cache"
set -gx XDG_CACHE_HOME "$_home_cache"

# ensure '~/.local/share' exists and set XDG_DATA_HOME
set _home_local_share "$HOME/.local/share"
test -d "$_home_local_share" || mkdir -p "$_home_local_share"
set -gx XDG_DATA_HOME "$_home_local_share"

# ensure '~/.local/state' exists and set XDG_STATE_HOME
set _home_local_state "$HOME/.local/state"
test -d "$_home_local_state" || mkdir -p "$_home_local_state"
set -gx XDG_STATE_HOME "$_home_local_state"

# ensure '~/.local/bin' exists and add it to the path
set _home_local_bin "$HOME/.local/bin"
test -d $_home_local_bin || mkdir -p "$_home_local_bin"
fish_add_path -g $_home_local_bin
