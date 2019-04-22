# Add ~/bin to path
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

sudo NetworkManager

# Enable ssh agent
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
