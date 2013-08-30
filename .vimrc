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
set swapfile
set dir=~/.tmp
set backup
set backupdir=~/.tmp

let mapleader = ","
map <C-S> :w<CR>
imap <C-S> <ESC>:w<CR>
map <C-Q> :q<CR>
imap <C-Q> <Esc>:q<CR>
map <silent> <leader>h :nohl<CR>
map <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>v :tabedit $MYVIMRC<CR>
nmap <silent> <leader>s :source $MYVIMRC<CR>
nmap <silent> <leader>n :set nonumber!<CR>
nmap <silent> <leader>p :set nopaste!<CR>

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

execute pathogen#infect()
set laststatus=2
