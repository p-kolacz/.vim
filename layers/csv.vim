" Plug 'chrisbra/csv.vim'

" autocmd vimrc InsertLeave *.csv :%!column -t
autocmd vimrc FileType csv nnoremap <buffer> <localleader>a :%!column -t<CR>
autocmd vimrc FileType csv nnoremap <buffer> <localleader>j :!csv2json.sh "%" > "%:t:r".json<CR>

