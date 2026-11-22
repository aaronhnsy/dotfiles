# set SSH_AUTH_SOCK to the 1Password agent socket
set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# disable homebrew hints
set -gx HOMEBREW_NO_ENV_HINTS "true"

# initialise homebrew environment variables
eval "$(/opt/homebrew/bin/brew shellenv fish)"