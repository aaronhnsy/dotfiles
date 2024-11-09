HISTFILE="$XDG_STATE_HOME/zsh/history"
HIST_STAMPS="dd.mm.yyyy"
HISTSIZE=999999
SAVEHIST=$HISTSIZE

setopt HIST_EXPIRE_DUPS_FIRST  # remove old duplicate commands from history first
setopt INC_APPEND_HISTORY      # store history immediately instead of upon exit
setopt HIST_FIND_NO_DUPS       # skip duplicate commands when searching history
setopt EXTENDED_HISTORY        # add timestamps to each command
setopt SHARE_HISTORY           # all sessions to access each others commands
