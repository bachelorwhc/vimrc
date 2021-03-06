autocmd BufWritePost $MYVIMRC source $MYVIMRC

fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
map <silent><F11>		: call ToggleFullscreen()<CR>
autocmd VimEnter * call ToggleFullscreen()

let mapleader = ";"
filetype on
set incsearch
set ignorecase
set nocompatible
set wildmenu
set backspace=indent,eol,start
syntax enable
syntax on

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
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype indent on
filetype plugin on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=syntax
set nofoldenable

" Molokai
colorscheme molokai

set laststatus=2
set number
set cursorline
set cursorcolumn
set hlsearch

" vim-fswitch
nmap <silent><Leader>sw : FSHere<CR>

" YouCompleteMe
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_from_tags_files=1
