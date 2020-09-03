Plug 'tpope/vim-commentary'

" C-_ means C-/
nnoremap <C-_> :Commentary<cr><down>
nnoremap <C-?> :Commentary<cr>
vnoremap <C-_> :Commentary<cr>
nmap <leader>cc yypkgccj
call Desc('c.c', 'duplicomment')

