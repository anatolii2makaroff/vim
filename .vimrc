set nocompatible

syntax on
filetype off

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'bling/vim-airline'
Plug 'python-mode/python-mode'
Plug 'tomasr/molokai'

call plug#end()

filetype plugin indent on

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

colo molokai

highlight Pmenu ctermbg=darkgray
highlight Pmenu ctermfg=grey

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set colorcolumn=80

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

set nu
set ls=2

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

let g:pymode_lint_ignore = ["E501"]
