set mouse=a

" Use extended mouse mode to support mouse mode when inside tmux
" Refer https://superuser.com/questions/549930/cant-resize-vim-splits-inside-tmux
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
