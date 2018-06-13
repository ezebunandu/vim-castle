" http://www.vimbits.com/bits/242
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($VIMHOME.'/undo') == 0
    :silent !mkdir -p $VIMHOME/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=$VIMHOME/undo/
  set undofile
endif
