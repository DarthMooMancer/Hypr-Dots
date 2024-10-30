call plug#begin()

Plug 'tpope/vim-sensible'

call plug#end()

set hidden
set completeopt=menuone,noselect,noinsert,popup
set backspace=indent,eol,start
set shiftwidth=2
set softtabstop=2
set smartindent
set tabstop=2
set nowrap
set mouse=""
set termguicolors
set scrolloff=8
set noswapfile
set nobackup
set nohlsearch
set number
set relativenumber
set incsearch
set nocompatible
let g:mapleader=" "

set bg=dark
colorscheme quiet
highlight Keyword gui=bold
highlight Comment gui=italic
highlight Constant guifg=#999999
highlight NormalFloat guibg=#333331
highlight Pmenu guifg=#FFFFFF guibg=#000000
