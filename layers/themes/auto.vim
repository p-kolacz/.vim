" echo filereadable($HOME.'/.vim/layers/themes/'.$THEME.'.vim')
" echo '$HOME/.vim/layers/themes/'.$THEME.'.vim'

if filereadable($HOME.'/.vim/layers/themes/'.$THEME.'.vim')
	source ~/.vim/layers/themes/$THEME.vim
else
	source ~/.vim/layers/themes/gruvbox.vim
endif

