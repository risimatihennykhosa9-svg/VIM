" Advanced Vim starter configuration.
" Includes a plugin manager, file explorer, statusline, theme, and useful shortcuts.

set nocompatible
set encoding=utf-8
set hidden
set mouse=a
set number
set relativenumber
set ruler
set showcmd
set wildmenu
set wildmode=longest:full,full
set cursorline
set scrolloff=8
set signcolumn=yes
set colorcolumn=100

" Tabs / indentation
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

" Files, backups, undo
set swapfile
set backup
set undofile
if has('persistent_undo')
  set undodir=~/.vim/undodir
endif

" UI and syntax
syntax enable
filetype plugin indent on
set termguicolors
if &t_Co >= 256
  set t_Co=256
endif

" Leader key
let mapleader = " "

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

" Theme and airline
colorscheme dracula
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>

" General shortcuts
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>h :nohlsearch<CR>

" Keep navigation natural on wrapped lines
nnoremap j gj
nnoremap k gk

" Auto open NERDTree when Vim starts without a file
autocmd VimEnter * if !argc() | NERDTree | endif

" Auto close NERDTree when the only buffer left is NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Show linenumbers in Explorer
let NERDTreeMinimalUI = 1
