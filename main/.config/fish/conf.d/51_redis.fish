# set redis config file location
set -gx REDISCLI_RCFILE "$XDG_CONFIG_HOME/redis/redisrc"

# set redis history file location
set -gx REDISCLI_HISTFILE "$XDG_STATE_HOME/redis/history"