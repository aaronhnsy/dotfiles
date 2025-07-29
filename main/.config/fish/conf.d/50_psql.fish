# set psql config file location
set -gx PSQLRC "$XDG_CONFIG_HOME/psql/psqlrc"

# set psql history file location
set -gx PSQL_HISTORY "$XDG_STATE_HOME/psql/history"
