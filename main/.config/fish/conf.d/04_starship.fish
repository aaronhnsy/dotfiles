# set starship config file location
set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"

# set starship cache directory
set -gx STARSHIP_CACHE  "$XDG_CACHE_HOME/starship"

# initialise starship prompt
starship init fish | source
