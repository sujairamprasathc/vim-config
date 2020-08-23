" Refer https://vi.stackexchange.com/questions/8900/autocomplete-after-serveral-chars
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
