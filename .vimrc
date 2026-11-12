" Developer-focused Vim starter configuration.
" Built for faster navigation, editing, and Python workflows.

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
set nowrap
set laststatus=2

" Tabs and indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set backspace=indent,eol,start

" Search behavior
set ignorecase
set smartcase
set incsearch
set hlsearch

" File handling
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

" -------- Plugin manager --------
call plug#begin('~/.vim/plugged')
  " UI / theme
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Navigation / search
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Editing / productivity
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'

  " Language support
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'

  " Optional syntax improvements
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

" -------- Theme --------
colorscheme gruvbox
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" -------- File explorer --------
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
nnoremap <leader>n :NERDTreeToggle<CR>

" -------- Fuzzy finder --------
nnoremap <leader>f :Files<CR>
noremap <leader>g :GFiles<CR>

" -------- Git --------
nnoremap <leader>t :Git status<CR>

" -------- Search / shortcuts --------
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>h :nohlsearch<CR>

" Keep navigation natural on wrapped lines
nnoremap j gj
nnoremap k gk

" -------- Comments --------
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1

" -------- Coc.nvim --------
let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-yaml']

" Use Tab to navigate completion menu.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :\n      \ <SID>check_back_space() ? "\<TAB>" : coc#refresh()
      \n
inoremap <expr><S-TAB> coc#pum#visible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Go to definition / references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation() abort
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h ' . expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . ' ' . expand('<cword>')
  endif
endfunction

" Auto open NERDTree when opening Vim without arguments
autocmd VimEnter * if !argc() | NERDTree | endif

" Automatically close NERDTree when it is the last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
