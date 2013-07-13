colorscheme wombat256mod 
set nocompatible
set t_Co=256
set mouse=a
set ttymouse=xterm2
set dir=~/tmp
set backupdir=~/tmp
set backup
set pastetoggle=<F3>
set noswapfile
set number
set showcmd
set showmode

set history=1000
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Turn on the WiLd menu
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
"Always show current position
set ruler
" A buffer becomes hidden when it is abandoned
set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable
set background=dark
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac"
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines"
" Always show the status line
set laststatus=2
" Format the status line
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=\ CWD:\ %r%{getcwd()}%h
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

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

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
