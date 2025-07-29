# set rustup data directory
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# set cargo data directory
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"

# source cargo environment variables
source "$CARGO_HOME/env.fish"