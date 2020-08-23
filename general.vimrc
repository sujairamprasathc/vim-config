" General config
syntax on
set number
set autoread
set autochdir
set autoindent
set splitright
set splitbelow
set showcmd
set showtabline=2
set laststatus=2
set foldmethod=syntax
filetype plugin indent on

" Completion config
set complete=.,t,i
set completeopt=menu,noinsert,menuone
set thesaurus=/usr/share/dict/american-english

" Statusline
set statusline=%t%m\ %y%=%p%%[%l/%L][%c(%v)]
