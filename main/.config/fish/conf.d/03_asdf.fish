# set asdf config file location
set -gx ASDF_CONFIG_FILE "$XDG_CONFIG_HOME/asdf/asdfrc"

# set asdf data directory location
set -gx ASDF_DATA_DIR "$XDG_DATA_HOME/asdf"

# ensure asdf shims directory exists
set _asdf_shims_dir "$ASDF_DATA_DIR/shims"
test -d "$_asdf_shims_dir" || mkdir -p "$_asdf_shims_dir"

# add asdf shims directory to $fish_user_paths
fish_add_path -g "$_asdf_shims_dir"
