set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set shiftwidth=4
set autoindent
set number
set wildmode=longest, list
filetype plugin indent on
syntax on
set mouse=a
filetype plugin on
set ttyfast
set cursorline

call plug#begin()

Plug 'https://github.com/catppuccin/nvim'

call plug#end()

colo catppuccin-mocha
