# set miscellaneous env variables
set -gx LANG   "en_GB.UTF-8"
set -gx EDITOR "nano"

# set XDG base directories
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME  "$HOME/.cache"
set -gx XDG_DATA_HOME   "$HOME/.local/share"
set -gx XDG_STATE_HOME  "$HOME/.local/state"
