# Add ~/bin to path
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

# Enable ssh agent
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

wifi () {
    # Connect to internet
    sudo wpa_supplicant -B -D wext -i wlp2s0 -c /etc/wpa_supplicant.conf
    sudo dhclient
}

wifi &

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
