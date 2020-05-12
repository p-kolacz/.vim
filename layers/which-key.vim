Plug 'liuchengxu/vim-which-key'

nnoremap <silent> <space>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

set timeoutlen=500


call Desc('p', '+Plugins')
call Desc('t', '+Tools')
call Desc('o', '+Options')
