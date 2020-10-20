 " _  _     _
" | || |___| |_ __
" | __ / -_) | '_ \
" |_||_\___|_| .__/
 "           |_|

 if has('win32') || has ('win64')
	 let $VIMHOME = $VIM."/vimfiles"
 else
	 let $VIMHOME = $HOME."/.vim"
 endif

function! Help()
	execute 'edit' $VIMHOME.'/doc/'.&filetype.'.txt'
endfunction

execute 'autocmd vimrc BufWritePost $VIMHOME/doc/*.txt helptags $VIMHOME/doc'
nnoremap <F1> :call Help()<cr>

