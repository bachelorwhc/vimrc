autocmd BufWritePost $MYVIMRC source $MYVIMRC

fun! ToggleFullscreen()
	call system("wmctrl -ir ".v:windowid." -b toggle,fullscreen")
endf
map <silent><F11>		: call ToggleFullscreen()<CR>
autocmd VimEnter * call ToggleFullscreen()

let mapleader = ";"
filetype on
filetype plugin on
set tabstop=4
set incsearch
set ignorecase
set nocompatible
set wildmenu
set backspace=indent,eol,start

nmap <Leader>q          : q<CR>
nmap <Leader>w          : w<CR>
nmap <Leader>Q          : qa!<CR>
nmap <Leader>WQ         : wa<CR>:q<CR>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
filetype plugin indent on

" Molokai
colorscheme molokai

set laststatus=2
set number
set cursorline
set cursorcolumn
set hlsearch
