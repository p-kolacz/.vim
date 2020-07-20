Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git'"

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <C-p> :Files<cr>

nnoremap <leader>fh :History<CR>
call Desc('f.h', 'history')
nnoremap <leader>pf :Rg<cr>
call Desc('p.f', 'find in files')

nnoremap <leader>vm :Maps<CR>
call Desc('v.m', 'nmaps')
nnoremap <leader>vh :History:<CR>
call Desc('v.h', 'commands history')
nnoremap <leader>vs :History/<CR>
call Desc('v.s', 'search history')
nnoremap <leader>vc :Commands<CR>
call Desc('v.c', 'commands')
nnoremap <leader>vf :Filetypes<CR>
call Desc('v.f', 'filetypes')

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
