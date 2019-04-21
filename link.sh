#!/bin/bash

source ./env.sh
echo $CONFIG_ROOT

cd $HOME
# All dotfiles and folders
ln -fs $CONFIG_ROOT/dotfiles/.* $HOME

# Binaries
ln -fs $CONFIG_ROOT/bin $HOME

