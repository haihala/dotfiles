set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.config/vim/plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Custom plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required

set ruler
set visualbell
set encoding=utf-8

" Syntax hilight
syntax on
filetype plugin indent on

" Line numbers
set number relativenumber

" Tabs/indent in general
set noexpandtab
set tabstop=4
set shiftwidth=4
set smartindent

" File explorer
map <C-e> :NERDTreeToggle<CR>

" Outlook
hi Visual term=reverse cterm=reverse guibg=grey
hi Cursor guifg=white guibg=black
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
