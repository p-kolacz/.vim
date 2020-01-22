Plug 'dense-analysis/ale'
let g:ale_sign_column_always = 1
let g:ale_sign_error = '☢'
let g:ale_sign_warning = '⚠'
let g:ale_gdscript3_godotheadless_executable='godot-headless' 
" let g:ale_completion_enabled = 1

nmap <leader>np <Plug>(ale_previous_wrap)
nmap <leader>ne <Plug>(ale_next_wrap)
