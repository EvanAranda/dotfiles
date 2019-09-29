" vim:foldmethod=marker:foldlevel=0

" Plugins {{{

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

if has("nvim")
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc' 
endif

Plug 'Chiel92/vim-autoformat'

" TypeScript / JavaScript {{{

" TypeScript syntax
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" }}}

" Python {{{

Plug 'deoplete-plugins/deoplete-jedi'

" }}}

call plug#end()

" }}}

" My Settings =========================

" Editor {{{

set nocompatible
filetype off
syntax on
filetype plugin indent on

set mouse=a
set number
set ruler
set visualbell
set encoding=utf-8

" Permanent redo/undo
set undodir=~/.vimdid
set undofile

" }}}
" Spaces & Tabs {{{

set cursorline
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" }}}
" Theme {{{

colorscheme gruvbox
set background=dark

"}}}
" Folding {{{
" foldmethod=marker
" foldlevel=0
" set modelines=1
" }}}
" Searching {{{

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
set path+=**

" }}}
" Rendering {{{

set ttyfast

" }}}
" Misc {{{

inoremap jk <esc>
let mapleader = "\<Space>"

"" }}}
" Runtime Path {{{

set rtp+=~/.fzf

" }}}

" Plugin Settings =====================

" NERDTree {{{

nnoremap <leader>b :NERDTreeToggle<CR>

" }}}
" Airline {{{

let g:airline_theme='luna'
set laststatus=2
set showmode
set showcmd

" }}}
" LanguageClient-neovim {{{

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" }}}
" deoplete {{{

let g:deoplete#enable_at_startup = 1

" }}}

" Languages {{{


" TypeScript / JavaScript {{{



" }}}

" }}}



