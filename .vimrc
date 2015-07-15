
set nocompatible     

syntax on
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'The-NERD-tree' 
Plugin 'Tagbar'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'snipMate'
Plugin 'Python-mode-klen'
Plugin 'surround.vim'
Plugin 'file:///~/.vim/bundle/jedi-vim/'
Plugin 'file:///~/.vim/bundle/conque-term/'


call vundle#end()      
filetype plugin indent on

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

set nu
set ls=2
set colorcolumn=80

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 1

let g:pymode_virtualenv = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_run = 0
let g:jedi#popup_select_first = 0

nnoremap <F6> :ConqueTermSplit ipython<CR>
nnoremap <F5> :exe "ConqueTermSplit ipython " . expand("%")<CR>

let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0

autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

inoremap <C-space> <C-x><C-o>

set nofoldenable




