" Plug 'clktmr/vim-gdscript3'
Plug 'habamax/vim-godot'

autocmd vimrc FileType gdscript3 nnoremap <buffer> <F5> :!echo "--------------------------------------------------------------------------------";godot<CR>
autocmd vimrc FileType gdscript3 nnoremap <buffer> <F6> :!godot scenes/game/Game.tscn<CR>

" autocmd vimrc FileType gdscript3 nnoremap <buffer> <C-p> :GFiles *.gd<CR>
" autocmd vimrc FileType gdscript3 nnoremap <buffer> <C-f> :RgGD3<CR>

autocmd vimrc FileType gdscript3 nnoremap <buffer> <localleader>t :!ctags -R .<cr>

command! -bang -nargs=* RgGD3
	\ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -g '*.gd' ".shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

