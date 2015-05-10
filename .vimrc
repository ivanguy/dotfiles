filetype off
" Setup Pathogen
call pathogen#infect()
call pathogen#helptags()
" auto reload .vimrc
autocmd! bufwritepost .vimrc source %

au FocusLost * :wa

set nocompatible
set showmode
set showcmd
set hidden
set cursorline
set ruler
set visualbell
set backspace=indent,eol,start
set undofile
set wrap
"set relativenumber
set list

" Sane search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Better copy & paste
set clipboard=unnamed

" Mouse
set mouse=a

" Show trailing whitespase
" must be before the colorshceme command
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Syntax highlighting
filetype plugin indent on
syntax on

" Color scheme
"color wombat256mod
set background=light
set t_Co=256
color wombat256mod

" Lines
set number
set tw=79 " text width (used by gd)
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set shiftround
set expandtab
set autoindent

" Search modifiers
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup
set nobackup
set nowritebackup
"set noswapfile



"====================Rebind====================
let mapleader="\\"

" Splits navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Tabs nav
map <c-n> <esc>:tabnext<cr>
map <c-p> <esc>:tabprevious<cr>

" Escape remap
inoremap kj <esc>
cnoremap kj <esc>

" Quicksave
nnoremap <leader>w :update<cr>
vnoremap <leader>w <c-c>:update<cr>
inoremap <leader>w <c-o>:update<cr>

" nnoremap <c-z> :update<cr>
" vnoremap <c-z> <c-c>:update<cr>
" inoremap <c-z> <c-o>:update<cr>

" Quick quit
noremap <leader>q :quit<cr>

" Bind nohl
noremap <leader>h :nohl<cr>

" Better indentation
xnoremap < <gv
xnoremap > >gv

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" NO arrowkeys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap ; :
