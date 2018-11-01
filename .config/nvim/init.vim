""Coerce yourself to use HJKL navigation only, no cursor key for you!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <F5> :make<CR>

""General configuration
"define some sensible configuraiton variables for programmers
set background=dark
set number
set relativenumber
set autoread
set autoindent
set ignorecase
set smartcase

set path+=**
set wildmenu
set showcmd
set showmatch
set mat=0

"manage tabs. We want tabs = 4 spaces, indent with tabs, but maybe align with spaces
set tabstop=4
set noexpandtab
set copyindent
set softtabstop=0
set shiftwidth=4
set list


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
Plugin 'zchee/deoplete-clang'
Plugin 'neomake/neomake'
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()
filetype plugin indent on

""Plugin settings
"airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'angr'
set noshowmode

" deoplete config
let g:deoplete#enable_at_startup = 1
"prevent the opening of the competion window on top of the screen
set completeopt-=preview
"clang for c++ with deoplete
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/'
"change the color of the completion popup
highlight Pmenu guibg=brown gui=bold

"neomake config
"call neomake when inserting (500ms delay), reading and writing a buffer
call neomake#configure#automake('nrwi', 500)
"lint code with clang:
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
   \ 'exe': 'clang++',
   \ 'args': [ '-I/usr/include/SDL2/', '-Wall', '-Wextra', '-Weverything', '-pedantic', '-Wno-sign-conversion', '-Wno-c++98-compat'],
   \ }

"lint code with clang:
let g:neomake_c_enabled_makers = ['clang']
let g:neomake_c_clang_maker = {
   \ 'exe': 'clang',
   \ 'args': [ '-I/usr/include/SDL2/', '-Wall', '-Wextra', '-Weverything', '-pedantic', '-Wno-sign-conversion'],
   \ }
let g:better_whitespace_enabled=1
