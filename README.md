# Config
Dungeons, dragons, dotfiles and dives

A bunch of simple scripts and dotfiles I use. Should eventually be able to recreate my work conditions with a single execution script.

## Structure

Stuff in `dotfiles` are automatically linked to `$HOME`

Stuff in `home_config` are automatically linked to `$HOME/.config`

Stuff in `non_linked` isn't linked anywhere, but I still think I should have handy

Some things in `scripts` are linked to `$HOME/bin` with abbreviated names.

## Contents

Configs for the following 

- zsh
- vim
- i3
- i3bar

The following is also used but everything should work even if not

- NetworkManager and nm-applet
- ssh-agent

## Meta config
linked_scripts - each line has name `X`. `push_conf` attempts to link `scripts/X.sh` to `$HOME/bin/X`

## Usage
Please check dotfiles and home_config beforehand. Taking a look at `scripts/push_conf.sh` before running it is also recommended.
Run `scripts/push_conf.sh`
