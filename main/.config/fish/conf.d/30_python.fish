# set python cache directory location
set -gx PYTHONPYCACHEPREFIX "$XDG_CACHE_HOME/python"

# set python history file location
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"

# set ruff cache directory location
set -gx RUFF_CACHE_DIR "$XDG_CACHE_HOME/ruff"
