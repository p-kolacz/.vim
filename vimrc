let mapleader=' '
let maplocalleader=' '
augroup vimrc
	autocmd!
augroup END

"Layers of Vim
call plug#begin('~/.vim/plugged')

" Apperance
	Plug 'wincent/terminus'
	runtime layers/airline.vim
	runtime layers/oceanic-next.vim
	" Plug 'ryanoasis/vim-devicons'

" Navigation
	runtime layers/nerdtree.vim
	" runtime layers/ctrlp.vim
	" runtime layers/ag.vim
	runtime layers/fzf.vim

" General coding
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-repeat'
	Plug 'michaeljsmith/vim-indent-object'
	runtime layers/commentary.vim
	runtime layers/fugitive.vim
	runtime layers/ale.vim
	runtime layers/mucomplete.vim
	" runtime layers/coc.vim
	runtime layers/ultisnips.vim
	runtime layers/figlet.vim

" Languages
	Plug 'nvie/vim-flake8'
	runtime layers/gdscript3.vim
	runtime layers/json.vim
	runtime layers/markdown.vim
	" Plug 'sheerun/vim-polyglot'
	runtime layers/fish.vim
	Plug 'ap/vim-css-color'

" Tools
	Plug 'freitass/todo.txt-vim'
	Plug 'vim-voom/VOoM'
	Plug 'chrisbra/unicode.vim'
	Plug 'vifm/vifm.vim'

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
	autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Folding
	set nofoldenable foldmethod=indent

" Searching
	set ignorecase smartcase incsearch

" Apperance
	syntax on
	if (has("termguicolors"))
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif
	set t_ut=""		"fix for scrolling background
	set nowrap
	set number relativenumber
	set signcolumn=yes
	set wildmenu
	set showmatch showcmd
	set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
	" set fillchars+=vert:┋
	set fillchars+=vert:│

" Auto save on blur
	autocmd vimrc FocusLost * :wa
	" :autocmd vimrc FocusLost * silent! wa

" Bindings
	inoremap jj <Esc>
	inoremap kk <Esc>
	inoremap jk <Esc>
	" Ctrl-space
	inoremap <C-@> _
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

	nnoremap h <C-w>8<
	nnoremap j <C-w>8+
	nnoremap k <C-w>8-
	nnoremap l <C-w>8>

	nnoremap <leader><leader> :
	nnoremap <leader>w :w<CR>
	nnoremap <leader>q :q<CR>
	nnoremap <leader>Q :wq<CR>
	nnoremap <leader>e :e<space>
	" nnoremap <leader>h :h<space>
	nnoremap <leader>dw df_
	nnoremap <leader>cw ct_
	nmap <leader>dc yypkgccj
	nnoremap <leader>os :set spell!<CR>
	nnoremap <leader>ol :set list!<CR>
	nnoremap <leader>cs :%s/\s\+$//e<CR>

" Auto commands
	autocmd vimrc BufWritePost vimrc source $MYVIMRC

