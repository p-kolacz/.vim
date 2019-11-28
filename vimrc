let mapleader=" "

" Plugins
	call plug#begin('~/.vim/plugged')
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-commentary'
		Plug 'wincent/terminus'
		Plug 'kien/ctrlp.vim'
		" Plug 'scrooloose/nerdtree'
		Plug 'clktmr/vim-gdscript3'
		" Plug 'ervandew/supertab'
		Plug 'Shougo/echodoc.vim'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'mhartington/oceanic-next'
		Plug 'rking/ag.vim'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'dense-analysis/ale'
	call plug#end()

" Main setup
	set nocompatible
	set encoding=utf8
	set fileformats=unix
	" set langmenu=en_US
	let $LANG='en_US'
	set autoread
	set belloff=all
	set backspace=indent,eol,start
	set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
	set splitbelow splitright
	filetype plugin indent on

" Identation
	set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4

" Folding
	set nofoldenable foldmethod=indent

" Searching
	set ignorecase smartcase incsearch

" Apperance
	syntax on
	set termguicolors
	set t_ut=""		"fix for scrolling background
	set nowrap
	set number relativenumber
	set wildmenu
	set showmatch showcmd
	set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Bindings
	nnoremap <leader><leader> :
	nnoremap <F12> :e $MYVIMRC<CR>
	nnoremap <C-F12> :source $MYVIMRC<CR>
	nnoremap <CR> o<Esc>
	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-v> "+P
	nnoremap <C-h> <C-w><C-h>
	nnoremap <C-j> <C-w><C-j>
	nnoremap <C-k> <C-w><C-k>
	nnoremap <C-l> <C-w><C-l>

	nnoremap <leader>w :w<CR>
	nnoremap <leader>q :q<CR>

autocmd BufWritePost vimrc source $MYVIMRC

" let g:ale_completion_enabled = 1

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
map <F8> :NERDTreeToggle<CR>
let g:ag_working_path_mode="r"
let g:ale_gdscript3_godotheadless_executable='godot-headless'
let g:ale_sign_error = '☢'
let g:ale_sign_warning = '⚠'
" let g:airline#extensions#ale#enabled = 0

" coc
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)



" GUI

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=UbuntuMono\ derivative\ Powerline\ 16

