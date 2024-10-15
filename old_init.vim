syntax on

set nocompatible

"let mapleader = "\ "

filetype on
filetype plugin on
syntax enable

set number
set mouse=a
set showcmd
set showmatch
set encoding=utf-8
set ignorecase
set smartcase
set shiftwidth=2
set autoindent
set smartindent
set fileencoding=utf-8
set colorcolumn=90

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/gruvbox-material' "theme
"Plug 'neovim/nvim-lspconfig'


call plug#end()


" GRUVBOX config
set background=dark
let g:gruvbox_material_background='medium'
colorscheme gruvbox-material
