set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

filetype plugin on    " required
"autocmd bufwritepost * :call CocAction('format')

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

" Splits behavior
set splitbelow
set splitright

nnoremap <C-up> <C-W><C-K>
nnoremap <C-down> <C-W><C-J>
nnoremap <C-left> <C-W><C-H>
nnoremap <C-right> <C-W><C-L>

" Outlook
hi Visual term=reverse cterm=reverse guibg=Grey
hi Cursor cterm=None guifg=White guibg=Black
hi Search cterm=None guifg=Blue guibg=Red
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme default

