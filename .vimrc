set t_Co=256
colo wombat256mod 
syntax enable
set showtabline=3
set cursorline
set nocompatible
set backspace=indent,eol,start
set autoindent
set ruler
set number
set showcmd
set incsearch
set ignorecase
set smartcase
set hlsearch
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set shiftround
set smartindent
set wildmenu
set confirm
set completeopt+=menuone,preview
set mouse=a
set ttymouse=xterm2
set scrolloff=6
let mapleader = ","
map <C-S> :w<CR>
imap <C-S> <ESC>:w<CR>
"inoremap <expr><silent> <S-Tab> pumvisible() ? "\<C-y>" : "<C-R>=Savecursor()<CR><C-X><C-O><C-P><Down><C-R>=Restorecursor()<CR>"
"inoremap <expr> <Tab>           pumvisible() ? "\<C-y>" : "\<Tab>"
"inoremap <expr> <CR>            pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>          pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>            pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>        pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
map <C-Q> :q<CR>
imap <C-Q> <Esc>:q<CR>
map <silent> <leader>h :nohl<CR>
map <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>v :tabedit $MYVIMRC<CR>
nmap <silent> <leader>s :source $MYVIMRC<CR>

map <expr> <F2> &mouse == "" ? ":set mouse=a<CR>" : ":set mouse=<CR>"
imap <expr> <F2> &mouse == "" ? "<Esc>:set mouse=a<CR>a" : "<Esc>:set mouse=<CR>a"
set pastetoggle=<F3>
set showmode

map <silent> <F4> :set invnumber<CR>
imap <silent> <F4> <Esc>:set invnumber<CR>a

cab e tabe
filetype plugin on
runtime macros/matchit.vim

au BufNewFile,BufRead *.soy set filetype=php

let g:sparkupArgs = "--no-last-newline --expand-divs"

if $TERM =~ '^screen'
    set t_Co=256
    nmap <Esc>OH <Home>
    imap <Esc>OH <Home>
    nmap <Esc>OF <End>
    imap <Esc>OF <End>
endif

function! Savecursor()
    let g:savedcursorline = line(".")
    let g:savedcursorcol = col(".")
    return ""
endf

function! Restorecursor()
    call cursor(g:savedcursorline, g:savedcursorcol)
    return ""
endf

call pathogen#infect()

"delimitMate
let loaded_delimitMate = 1
let delimitMate_balance_matchpairs = 1
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
