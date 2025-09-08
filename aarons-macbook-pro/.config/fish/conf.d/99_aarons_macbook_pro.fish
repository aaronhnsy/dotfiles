# set SSH_AUTH_SOCK to the 1Password agent socket
set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# add jetbrains toolbox scripts to path
fish_add_path -g "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"