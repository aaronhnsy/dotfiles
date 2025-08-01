# load fnm environment variables
if test (uname) = Darwin
    fnm env --use-on-cd --shell fish | source
else
    fish_add_path -g "$XDG_DATA_HOME/fmn"
    $FNM_DIR/fnm env --use-on-cd --shell fish | source
end

# set node repl history file location
set -gx NODE_REPL_HISTORY "$XDG_STATE_HOME/node/history"

# set npm config file location
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"

# set npm cache directory
set -gx NPM_CONFIG_CACHE "$XDG_CACHE_HOME/npm"

# set npm default module init file location
set -gx NPM_CONFIG_INIT_MODULE "$XDG_DATA_HOME/npm/init.js"

# set npm logs directory
set -gx NPM_CONFIG_LOGS_DIR "$XDG_STATE_HOME/npm/logs"
