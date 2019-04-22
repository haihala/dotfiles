# Add ~/bin to path
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

# Enable ssh agent
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

sudo NetworkManager

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
