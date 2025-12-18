# alias (ls -> eza) with better defaults
alias ls "eza --almost-all --group-directories-first --icons=always --hyperlink --long --header --binary --git --ignore-glob '.DS_Store'"

# ensure wget hsts directory exists
set _wget_hsts_dir "$XDG_STATE_HOME/wget"
test -d "$_wget_hsts_dir" || mkdir -p "$_wget_hsts_dir"

# alias (wget -> wget) to use custom hsts file location
alias wget "wget --hsts-file=$_wget_hsts_dir/hsts"