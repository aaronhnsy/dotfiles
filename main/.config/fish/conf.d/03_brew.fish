# disable homebrew hints
set -gx HOMEBREW_NO_ENV_HINTS "true"

# set homebrew environment variables
eval "$(/opt/homebrew/bin/brew shellenv fish)"
