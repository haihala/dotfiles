#!/bin/bash

binaries=(add_bin push_conf note wallpaper_update)

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
CONFIG_ROOT="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
CONFIG_ROOT="$(dirname "$CONFIG_ROOT")"


cd $CONFIG_ROOT
# Make sure all scripts are usable
chmod -R +x scripts

# All dotfiles and folders
ln -fs $CONFIG_ROOT/dotfiles/.* $HOME
echo "linked dotfiles"

# Binaries (link some from scripts to ~/bin)i
if [ ! -d $HOME/bin ]; then
    echo "~/bin doesn't exist, creating"
    mkdir $HOME/bin
fi
for s in ${binaries[*]}; do
    echo "Linking $s to bin"
    ln -fs $CONFIG_ROOT/scripts/$s.sh $HOME/bin/$s
done

# Home ".config"
if [ ! -d $HOME/.config ]; then
    echo "~/.config doesn't exist, creating"
    mkdir $HOME/.config
fi
ln -fs $CONFIG_ROOT/home_config/* $HOME/.config/
echo "linked things to $HOME/.config"

# Reload i3
i3-msg -t command restart
echo "Restarted i3"
