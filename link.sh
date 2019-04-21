#!/bin/bash

source ./env.sh

cd $HOME
# All dotfiles and folders
ln -fs $CONFIG_ROOT/dotfiles/.* $HOME
echo "linked dotfiles"

# Binaries
ln -fs $CONFIG_ROOT/bin $HOME
echo "linked binaries"

# Home ".config"
ln -fs $CONFIG_ROOT/home_config/* $HOME/.config/
echo "linked .config"
