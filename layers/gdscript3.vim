Plug 'clktmr/vim-gdscript3'
autocmd vimrc FileType gdscript3 nnoremap <buffer> <F5> :!godot<CR>
autocmd vimrc FileType gdscript3 nnoremap <buffer> <F6> :!godot scenes/game/Game.tscn<CR>
nnoremap <F1> :!ctags -R .<cr>
