    " _    _      _ _
   " / \  (_)_ __| (_)_ __   ___
  " / _ \ | | '__| | | '_ \ / _ \
 " / ___ \| | |  | | | | | |  __/
" /_/   \_\_|_|  |_|_|_| |_|\___|
" https://github.com/vim-airline/vim-airline
" https://github.com/vim-airline/vim-airline/wiki/Screenshots

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts = 1
" autocmd vimrc VimEnter * :AirlineTheme zenburn
let g:airline_theme = 'gruvbox'
" autocmd vimrc VimEnter * let g:airline_theme = 'deus'
let g:airline_section_z = '%l/%L:%2v'

let g:airline#extensions#whitespace#enabled = 0

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'

