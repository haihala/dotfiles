#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
CONFIG_ROOT="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
CONFIG_ROOT="$(dirname "$CONFIG_ROOT")"

# All dotfiles and folders
ln -fs $CONFIG_ROOT/dotfiles/.* $HOME
echo "linked dotfiles"

# Binaries
ln -fs $CONFIG_ROOT/bin $HOME
echo "linked binaries to $HOME/bin"
chmod -R +x $HOME/bin
echo "made sure everything in $HOME/bin is executable"

# Home ".config"
ln -fs $CONFIG_ROOT/home_config/* $HOME/.config/
echo "linked things to $HOME/.config"
