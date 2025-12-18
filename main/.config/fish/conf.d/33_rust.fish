# set rustup data directory location
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# set cargo data directory location
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"

# add cargo bin directory to PATH
fish_add_path -g "$CARGO_HOME/bin"