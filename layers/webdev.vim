 " ___                 _
" | __|_ __  _ __  ___| |_
" | _|| '  \| '  \/ -_)  _|
" |___|_|_|_|_|_|_\___|\__|
" https://github.com/mattn/emmet-vim

Plug 'mattn/emmet-vim'

" Enable in different mode
" If you don't want to enable emmet in all modes, you can use set these options in vimrc:
	" let g:user_emmet_mode='n'    "only enable normal mode functions.
	" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
	" let g:user_emmet_mode='a'    "enable all function in all mode.

" Enable just for html/css
	let g:user_emmet_install_global = 0
	autocmd FileType html,css EmmetInstall

" Redefine trigger key
" To remap the default <C-Y> leader:
" Note that the trailing , still needs to be entered, so the new keymap would be <C-Z>,.
	let g:user_emmet_leader_key=','

" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
