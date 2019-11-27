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
Plugin 'molokai'
Plugin 'fatih/vim-go'
Plugin 'chiel92/vim-autoformat'

call vundle#end()
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

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_run = 0

au FileType python nmap <leader>r :!python %<CR>
autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

inoremap <C-space> <C-x><C-o>

set nofoldenable

au FileType go nmap <leader>r :!go run %<CR>
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_autosave = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

au FileType java nmap <leader>c :!make<CR>
au FileType java nmap <leader>r :!make run<CR>
au FileType java nmap <leader>t :!make test<CR>
au FileType java nmap <leader>d :!make debug<CR>
au FileType java nmap <leader>b :!make build<CR>

au BufWrite * :Autoformat
