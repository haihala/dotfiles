if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    # Only do this on the laptop where X exists and starts
    sudo NetworkManager
    # Enable ssh agent
    eval `ssh-agent`
    ssh-add ~/.ssh/id_rsa
    exec startx
fi

export PATH="$HOME/.cargo/bin:$PATH"
