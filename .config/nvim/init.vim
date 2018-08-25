""General configuration
"define some sensible configuraiton variables for programmers
set background=dark
set number
set relativenumber
set termguicolors
set autoread
set autoindent
set ignorecase
set smartcase

"manage tabs. We want tabs = 4 spaces, indent with tabs, but maybe align with spaces
set tabstop=4
set noexpandtab
set copyindent
set softtabstop=0
set shiftwidth=4

""Plugin management
"Vundle
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Shougo/deoplete.nvim.git'
"Plugin 'zchee/deoplete-clang'
Plugin 'tweekmonster/deoplete-clang2'
call vundle#end()
filetype plugin indent on

""Plugin settings
"airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
set noshowmode


