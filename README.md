# Config
Dungeons, dragons, dotfiles and dives

A bunch of simple scripts and dotfiles I use. Should eventually be able to recreate my preferred linux environment really quicly.

## Setup
1. Run a new-ish fedora workstation
2. `sudo dnf_install.sh` 
3. Install the following (not found in dnf by default)
	1. VScode - [link](https://code.visualstudio.com/docs/setup/linux)
	2. swaylock-effects - [link](https://github.com/mortie/swaylock-effects)
	3. mpv - [link](https://forums.fedoraforum.org/showthread.php?324163-install-mpv-player-on-fedora32&p=1835826#post1835826)
	4. oh-my-zsh - [link](https://ohmyz.sh/)
	5. z - [link](https://github.com/agkozak/zsh-z)
	6. zsh-autosuggestions - [link](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
4. Run `./link.sh` from the repository root
5. Check git email with `git config user.email`

## What goes where

* `dotfiles/*` is linked to `$HOME/*`
* `home_config/*` -> `$HOME/.config/*`
* `bin` -> `$HOME/bin` 
* `non_linked` isn't linked anywhere, but I still think I should have handy.

