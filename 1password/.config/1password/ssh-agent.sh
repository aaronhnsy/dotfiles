SSH_AUTH_DIR="$XDG_CACHE_HOME/1password"
if [ ! -d $SSH_AUTH_DIR ]; then
    mkdir -p $SSH_AUTH_DIR
fi

export SSH_AUTH_SOCK="$SSH_AUTH_DIR/ssh-agent.sock"
ALREADY_RUNNING=$(ps -auxww | grep -q "[n]piperelay.exe -ei -s //./pipe/openssh-ssh-agent"; echo $?)

if [[ $ALREADY_RUNNING != "0" ]]; then
    if [[ -S $SSH_AUTH_SOCK ]]; then
	echo "Hi"
        rm $SSH_AUTH_SOCK
    fi
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
fi
