# set SSH_AUTH_SOCK to the 1Password agent socket
set -gx SSH_AUTH_SOCK "$HOME/.1password/agent.sock"

# set gtk2.0 rc file location
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"