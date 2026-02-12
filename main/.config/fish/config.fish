# disable fish greeting
set -g fish_greeting

# theme
fish_config theme choose catppuccin-macchiato

# keybinds
set --global fish_key_bindings fish_default_key_bindings

# title
function fish_preexec --on-event fish_preexec
    if builtin --query $argv[1]
        set -e __fish_current_job
        return
    end

    set -g __fish_current_job $argv
end

function fish_postexec --on-event fish_postexec
    set -e __fish_current_job
end

function fish_title
    # identity (full hostname)
    set local_user (whoami)
    set local_host (hostname)
    set identity ""

    if set -q SSH_CONNECTION
        set identity "$USER@$local_host"
    else if test "$local_user" != "$USER"
        set identity "$local_user@$local_host"
    end

    # full pwd
    set dir (pwd)

    # running job (if one is executing)
    set job ""
    if set -q __fish_current_job
        set job "$__fish_current_job"
    end

    # output format
    if test -n "$identity"
        if test -n "$job"
            echo "$identity: $dir: $job"
        else
            echo "$identity: $dir"
        end
    else
        if test -n "$job"
            echo "$dir: $job"
        else
            echo "$dir"
        end
    end
end

