let mapleader=' '
let maplocalleader=' '
augroup vimrc
	autocmd!
augroup END

"Layers of Vim
" let $LAYERS=fnamemodify(expand($MYVIMRC), ':h').'/layers'
call plug#begin('~/.vim/plugged')

" Apperance
	Plug 'wincent/terminus'
	runtime layers/airline.vim
	runtime layers/oceanic-next.vim
	" Plug 'ryanoasis/vim-devicons'

" Navigation
	runtime layers/nerdtree.vim
	runtime layers/ctrlp.vim
	runtime layers/ag.vim

" General coding
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-repeat'
	Plug 'michaeljsmith/vim-indent-object'
	runtime layers/commentary.vim
	runtime layers/fugitive.vim
	runtime layers/ale.vim
	runtime layers/coc.vim
	runtime layers/ultisnips.vim

" Languages
	Plug 'nvie/vim-flake8'
	runtime layers/gdscript3.vim
	runtime layers/markdown.vim
	" Plug 'sheerun/vim-polyglot'

" Tools
	Plug 'freitass/todo.txt-vim'
	Plug 'vim-voom/VOoM'

call plug#end()
colorscheme OceanicNext

nnoremap <leader>ppi :PlugInstall<CR>
nnoremap <leader>ppu :PlugUpdate<CR>
nnoremap <leader>ppc :PlugClean<CR>

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

" Formating
	set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
	" c - autowrap comments, r - insert comments at <cr>, o - comment after o/O
	" autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

" Auto save on blur
	autocmd vimrc FocusLost * :wa
	" :autocmd vimrc FocusLost * silent! wa

" Bindings
	inoremap jj <Esc>
	inoremap kk <Esc>
	nnoremap <space> <nop>
	nnoremap <F12> :e $MYVIMRC<CR>
	nnoremap <C-F12> :source $MYVIMRC<CR>
	nnoremap <CR> o<Esc>
	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-v> "+P

	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

	nnoremap H <C-w>H
	nnoremap J <C-w>J
	nnoremap K <C-w>K
	nnoremap L <C-w>L

	nnoremap h <C-w>8<
	nnoremap j <C-w>8+
	nnoremap k <C-w>8-
	nnoremap l <C-w>8>

	nnoremap <leader><leader> :
	nnoremap <leader>w :w<CR>
	nnoremap <leader>q :q<CR>
	nnoremap <leader>Q :wq<CR>
	nnoremap <leader>e :e<space>
	nnoremap <leader>h :h<space>
	nnoremap <leader>dw df_
	nnoremap <leader>cw ct_
	nnoremap <leader>os :set spell!<CR>
	nnoremap <leader>ow :set list!<CR>
	nnoremap <leader>cs :%s/\s\+$//e<CR>
	nnoremap <leader>ff :.!figlet \| sed 's/ *$//g'<CR>
	nnoremap <leader>fr :.!figlet -f rectangles \| sed 's/ *$//g'<CR>
	nnoremap <leader>fs :.!figlet -f small \| sed 's/ *$//g'<CR>

" Auto commands
	autocmd vimrc BufWritePost vimrc source $MYVIMRC

