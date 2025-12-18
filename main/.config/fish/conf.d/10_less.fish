# ensure less history directory exists
set _less_history_dir "$XDG_STATE_HOME/less"
test -d "$_less_history_dir" || mkdir -p "$_less_history_dir"

# set less history file location
set -gx LESSHISTFILE "$_less_history_dir/history"
