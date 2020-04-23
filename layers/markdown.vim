 " __  __            _       _
" |  \/  | __ _ _ __| | ____| | _____      ___ __
" | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
" | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
" |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
" https://github.com/tpope/vim-markdown
" https://github.com/plasticboy/vim-markdown

let g:markdown_fenced_languages =  ['html', 'css', 'php', 'sh']

let g:polyglot_disabled = ['markdown']
" Plug 'plasticboy/vim-markdown'
" Plug 'gabrielelana/vim-markdown'

autocmd vimrc Filetype markdown nnoremap <buffer> <localleader>hh yyp<c-v>$r=
autocmd vimrc Filetype markdown nnoremap <buffer> <localleader>h2 yyp<c-v>$r-
