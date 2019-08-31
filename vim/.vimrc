call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" NERDTree {{{
map <C-b> :NERDTreeToggle<CR>
" }}}
" Airline {{{
let g:airline_theme='luna'
set laststatus=2
set showmode
set showcmd
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
" Misc {{{
inoremap jk <esc>
set nocompatible
filetype off
syntax on
filetype plugin indent on

set number
set ruler
set visualbell
set encoding=utf-8
"" }}}
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
" Rendering {{{
set ttyfast
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

" vim:foldmethod=marker:foldlevel=0
