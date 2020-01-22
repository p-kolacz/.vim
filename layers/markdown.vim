 " __  __            _       _
" |  \/  | __ _ _ __| | ____| | _____      ___ __
" | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
" | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
" |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
" https://github.com/plasticboy/vim-markdown

let g:polyglot_disabled = ['markdown']
Plug 'plasticboy/vim-markdown'
" Plug 'gabrielelana/vim-markdown'

nnoremap <leader>tU yyp<c-v>$r=
nnoremap <leader>tu yyp<c-v>$r-
