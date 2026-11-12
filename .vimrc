" Basic, portable Vim starter configuration.

" General behavior
set nocompatible
set encoding=utf-8
set hidden
set mouse=a
set number
set ruler
set showcmd
set wildmenu
set wildmode=longest:full,full

" Editing defaults
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set backspace=indent,eol,start

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Files and undo
set swapfile
set backup
set undofile
if has('persistent_undo')
  set undodir=~/.vim/undodir
endif

" Appearance: use the terminal's colors when supported.
if &t_Co >= 256
  set t_Co=256
endif
syntax enable
filetype plugin indent on

" Leader key and practical mappings
let mapleader = " "
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>h :nohlsearch<CR>

" Keep common navigation keys working across wrapped lines.
nnoremap j gj
nnoremap k gk
