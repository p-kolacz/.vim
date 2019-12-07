let mapleader=' '
runtime layers/init.vim

" Main setup
	" set nocompatible
	set encoding=utf-8
	scriptencoding utf-8
	set fileformats=unix
	language messages en_US.utf8
	" set langmenu=en_US.utf8
	" let $LANG='en_US'
	set autoread
	set belloff=all
	set backspace=indent,eol,start
	set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
	set splitbelow splitright
	filetype plugin indent on
	set exrc secure
	set shell=bash
	" set hidden
	augroup vimrc
		autocmd!
	augroup END

" Formating
	set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
	autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
	set signcolumn=yes
	set wildmenu
	set showmatch showcmd
	set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Bindings
	inoremap jj <Esc>
	inoremap kk <Esc>
	nnoremap <space> <nop>
	nnoremap <F12> :e $MYVIMRC<CR>
	nnoremap <C-F12> :source $MYVIMRC<CR>
	nnoremap <CR> o<Esc>
	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-v> "+P
	nnoremap <C-h> <C-w><C-h>
	nnoremap <C-j> <C-w><C-j>
	nnoremap <C-k> <C-w><C-k>
	nnoremap <C-l> <C-w><C-l>

	nnoremap <leader><leader> :
	nnoremap <leader>w :w<CR>
	nnoremap <leader>q :q<CR>
	nnoremap <leader>Q :wq<CR>
	nnoremap <leader>e :e<space>
	nnoremap <leader>h :h<space>
	nnoremap <leader>os :set spell!<CR><space>

" Auto commands
	autocmd vimrc BufWritePost vimrc source $MYVIMRC

