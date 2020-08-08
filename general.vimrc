" General config
syntax on
set mouse=a
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

" Minimalist-AutoCompletePop-Plugin
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
	if v:char =~ '\K'
		\ && getline('.')[col('.') - 3] !~ '\K'
		\ && getline('.')[col('.') - 2] =~ '\K' " last char
		\ && getline('.')[col('.') - 1] !~ '\K'
		if pumvisible() == 0
			call feedkeys("\<C-p>")
		end
	end
endfun

" Statusline
set statusline=%t%m\ %y%=%p%%[%l/%L][%c(%v)]
