call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Open NERDTree on vimenter
autocmd vimenter * NERDTree

set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

set nocompatible        " prevent vim from emulating vi bugs/limitations
" colorscheme wombat
set title
set ruler                       " shows coordinates of cursor in bottom-right
set number                      " enable line-spacing
set scrolloff=3

"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_WinWidth=50
map <F4> :TlistToggle<cr>
map <F3> :NERDTreeToggle<cr>
set tags=tags

" NERRDTree Settings
let NERDTreeIgnore=['\.pyc$']	" Ignore compiled python files.


filetype on
syntax on
set autoindent
set smartindent
set tabstop=2           " set 4-space tabs
set shiftwidth=2
"set showmatch           " cursor will jump to matching bracket on close/open brace

set vb t_vb=            " prevents beeps on invalid commands                 

set incsearch           " performs search as text is entered
set ignorecase
set smartcase           " ignore case unless caps specified in search terms

"set virtualedit=all    " allows cursor to free-roam
set wrap!                       " turn off word-wrap

" load server specific settings
if filereadable($HOME . '/.vimrc.local')
         source $HOME/.vimrc.local
endif

