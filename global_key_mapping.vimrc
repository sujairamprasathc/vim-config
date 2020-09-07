" Global key mapping

" Shortcut to save file
" Use update instead of write so that the file is not rewritten if no changes
" are made
inoremap <F9> <ESC>:update<CR>a
noremap <F9> :update<CR>

" Shortcut to switch tab easily
noremap <C-w>, :tabprevious<CR>
noremap <C-w>. :tabnext<CR>
inoremap <C-w>, <ESC>:tabprevious<CR>a
inoremap <C-w>. <ESC>:tabnext<CR>a
