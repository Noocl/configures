" This vim configure is for Linux platform. 2018-11-26

" ####################### Basic Configure ##############################
set fileencodings=utf-8,gbk				" use utf-8 or gbk open the file.
"set guifont=YaHei_Consolas_Hybrid:h10	" set font
colorscheme desert						" other like morning,
set background=dark						" other like light
"winsize 130 40         " columns rows, don't enable this in Console
set guioptions-=T 	    " hide tools bar
set guioptions-=m 	    " hide menu bar
set guioptions-=r       " hide right scroll bar 
set guioptions-=L       " hide left scroll bar
set laststatus=1		" all show tatusbar
set nu!			    	" show row number
set cursorline 		    " show current line 
"set cursorcolumn	    " show current column
"set relativenumber		" relative line num
let $LANG='en'			" set message language
set helplang=en			" the help system set chinese

set autoindent			" set auto indent
set tabstop=4			" set tab length
set softtabstop=4		" can delete four space one time.
set shiftwidth=4		" set << >> width length is 4.

set showmatch			" code match
set hlsearch			" highlight all matches
set ignorecase			" sertch ignore upper or lower case
set clipboard=unnamed	" copy and past with system. y is copy, p is past.
set history=1000		" history do number, defautl 20
"set foldmethod=indent	" code fold up
"set autoread			" file has modify in other editor, the file will auto load in vim.
"
" ########################## Undo Directory ###############################
set nobackup							" not create backup file
set undofile                            " set undofile is able
"set undodir=$VIM/vimfiles/\_undodir    " Windows System：in vimfiles direction, make a folder named '_undodir'
set undodir=$VIM/\_undodir				" Linux System, generaly the $VIM is /usr/share/vim, make dir named _undodir in $VIM, chmod -R 777 _undodir
set undolevels=1000                     " maximum number of changes that can be undone

" Plugin Configure
set nocompatible       " be iMproved, required
filetype off           " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Plugin 'plasticboy/vim-markdown'
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required

filetype plugin indent on    " required
map e :NERDTreeToggle<CR>
let g:vim_markdown_folding_disabled = 1







