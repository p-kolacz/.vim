Plug 'tpope/vim-commentary'

" nnoremap <leader>c :Commentary<CR><down>
" call Desc('c', 'comment')

" C-_ means C-/
nnoremap <C-_> :Commentary<cr><down>
vnoremap <C-_> :Commentary<cr>
nmap <leader>cc yypkgccj
call Desc('c.c', 'duplicomment')

