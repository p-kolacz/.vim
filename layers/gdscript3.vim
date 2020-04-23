Plug 'clktmr/vim-gdscript3'

autocmd vimrc FileType gdscript3 nnoremap <buffer> <F5> :!godot<CR>
autocmd vimrc FileType gdscript3 nnoremap <buffer> <F6> :!godot scenes/game/Game.tscn<CR>

autocmd vimrc FileType gdscript3 nnoremap <buffer> <C-p> :GFiles *.gd<CR>
autocmd vimrc FileType gdscript3 nnoremap <buffer> <C-f> :RgGD3<CR>

nnoremap <F1> :!ctags -R .<cr>

command! -bang -nargs=* RgGD3
	\ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -g '*.gd' ".shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

