set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'       " c-j & c-k
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'        " c-y,
Plugin 'kien/ctrlp.vim'         " c-p
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'           " :Ag
Plugin 'terryma/vim-multiple-cursors' " c-n c-p c-x
Plugin 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" list snippets
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/paulssnippets']

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
let g:airline_theme = "hybridline"

" custom
let mapleader = ","
syntax enable
set nu
set ts=4
set sw=4
set expandtab
set tabstop=4
set cursorline
set smartcase   " or set ignorecase
set hidden
set showtabline=0

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

:nnoremap <unique> tn :tabnew .<cr>
:nnoremap <unique> te :tabedit 
:nnoremap <unique> to :tabonly<cr>
:map <leader>q :Ag <cword><cr>
