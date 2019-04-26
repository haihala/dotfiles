#!/bin/bash

source lib_metaconfig

bold=$(tput smso)
normal=$(tput sgr0)
color='\033[0;36m'
nc='\033[0m'

header() {
    echo -e "\t$color$bold$1$normal$nc"
}

cd $CONFIG_ROOT
# Make sure all scripts are usable
chmod -R +x scripts

# All dotfiles and folders
header $HOME
for dot in `ls -AL $CONFIG_ROOT/dotfiles/`
do
    ln -fs $CONFIG_ROOT/dotfiles/$dot $HOME
    echo "linked $dot to $HOME"
done

# Binaries (link some from scripts to ~/bin)i
header $HOME/bin
if [ ! -d $HOME/bin ]; then
    echo "~/bin doesn't exist, creating"
    mkdir $HOME/bin
fi
while read s; do
    echo "linked $s to bin"
    ln -fs $CONFIG_ROOT/scripts/$s.sh $HOME/bin/$s
done <meta_config/linked_scripts

# Home ".config"
header $HOME/.config
if [ ! -d $HOME/.config ]; then
    echo "~/.config doesn't exist, creating"
    mkdir $HOME/.config
fi

for conf in `ls -AL $CONFIG_ROOT/home_config/`
do
    ln -fs $CONFIG_ROOT/home_config/$conf $HOME/.config/
    echo "linked $conf to $HOME/.config/"
done

# Reload i3
if [ pgrep i3 > /dev/null 2>&1 -eq 0 ]; then
    echo "Restarting i3"
    i3-msg -t command restart > /dev/null
fi

