set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
set runtimepath+=~/.config/nvim
source ~/.config/nvim/main.vim
