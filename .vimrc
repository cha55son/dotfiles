colo wombat256mod 
syntax enable
set t_Co=256
set showtabline=3
set cursorline
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
set dir=~/tmp
set backupdir=~/tmp
set backup
set showmode
set pastetoggle=<F3>

noremap <silent> <C-S>  :update<CR>
noremap <silent> <C-Q>  :quit<CR>
inoremap <silent> <C-S> <ESC>:update<CR>
inoremap <silent> <C-Q> <ESC>:quit<CR>
vnoremap <silent> <C-S> <ESC>:update<CR>
vnoremap <silent> <C-Q> <ESC>:quit<CR>

let mapleader = ","
map <silent> <leader>h :nohl<CR>
map <silent> <leader>e :NERDTreeToggle<CR>
nmap <silent> <leader>n :set nonumber!<CR>

call pathogen#infect()
call pathogen#helptags()

let g:Powerline_symbols = "fancy"
