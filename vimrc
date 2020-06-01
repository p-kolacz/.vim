noremap <space> <nop>
let mapleader=' '
set shell=bash
" let maplocalleader=' '
augroup vimrc
	autocmd!
augroup END


"Layers of Vim
call plug#begin('~/.vim/plugged')

" Which key
	runtime layers/desc.vim
	runtime layers/which-key.vim
	
" Appearance
	Plug 'wincent/terminus'
	runtime layers/airline.vim
	" Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'ryanoasis/vim-devicons'
	runtime layers/themes/gruvbox.vim

" Navigation
	" runtime layers/nerdtree.vim
	runtime layers/netrw.vim
	runtime layers/fzf.vim
	runtime layers/open-browser.vim

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
	runtime layers/figlet.vim

" Languages
	Plug 'nvie/vim-flake8'
	runtime layers/gdscript3.vim
	" runtime layers/json.vim
	runtime layers/markdown.vim
	runtime layers/fish.vim
	" Plug 'ap/vim-css-color'
	" Plug 'vim-scripts/dbext.vim'

" Tools
	Plug 'freitass/todo.txt-vim'
	Plug 'vim-voom/VOoM'
	" Plug 'chrisbra/unicode.vim'
	Plug 'vifm/vifm.vim'

call plug#end()

runtime layers/plug.vim

call which_key#register('<Space>', "g:which_key_map")

" Main setup
	set encoding=utf-8
	scriptencoding utf-8
	set fileformats=unix
	language messages en_US.utf8
	set autoread
	set belloff=all
	set backspace=indent,eol,start
	set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
	set splitbelow splitright
	filetype plugin indent on
	set exrc secure		" Enables the reading of .vimrc, .exrc and .gvimrc in the current directory.
	set scrolloff=5		" top and bottom margin in rows
	" set hidden

" Formating
	set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
	" c - autowrap comments, r - insert comments at <cr>, o - comment after o/O
	autocmd vimrc FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Folding
	set nofoldenable foldmethod=indent

" Searching
	set ignorecase smartcase incsearch

" Appearance
	syntax on
	" Enable underline & undercurl
	let &t_Cs = "\e[4:3m"
	let &t_Ce = "\e[4:0m"
	if (has("termguicolors"))
		if &term == "alacritty"
			let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
			let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		endif
		set termguicolors
	endif
	execute 'colorscheme '.g:colorscheme

	if &term == "xterm-kitty"
		"fix for scrolling background
		set t_ut=""
	endif

	set nowrap
	set number relativenumber
	set signcolumn=yes
	set wildmenu
	set showmatch showcmd
	set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
	" set fillchars+=vert:┋
	set fillchars+=vert:\ 

" Auto save on blur
	autocmd vimrc FocusLost * :wa
	" :autocmd vimrc FocusLost * silent! wa

" Mouse
	set ttymouse=sgr	" Fixes mouse in alacritty

" Bindings
	inoremap jj <Esc>
	inoremap kk <Esc>
	inoremap jk <Esc>
	" Ctrl-space
	inoremap <C-@> _
	nnoremap <F12> :e $MYVIMRC<CR>
	nnoremap <C-F12> :source $MYVIMRC<CR>
	nnoremap <CR> o<Esc>
	vnoremap <C-c> "*y :let @+=@*<CR>
	map <C-v> "+P

	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

	" nnoremap h <C-w>8<
	" nnoremap j <C-w>8+
	" nnoremap k <C-w>8-
	" nnoremap l <C-w>8>

	nnoremap <leader><leader> :
	nnoremap <leader>w :w<CR>
	call DescIgnore('w')
	" call Desc('w', 'write')

	nnoremap <leader>q :q<CR>
	" call Desc('q', 'quit')
	call DescIgnore('q')
	nnoremap <leader>Q :wq<CR>
	call Desc('Q', 'write&quit')

	call Desc('f', '+File')
	nnoremap <leader>fe :e<space>
	call Desc('f.e', 'edit')

	nnoremap <leader>dw df_
	call Desc('d.w', 'delete till _')
	nnoremap <leader>cw ct_
	call Desc('c.w', 'change till _')


	nnoremap <leader>os :set spell!<CR>
	call Desc('o.s', 'spell')
	nnoremap <leader>ol :set list!<CR>
	call Desc('o.l', 'list')
	nnoremap <leader>on :set relativenumber! number!<CR>
	call Desc('o.n', 'line numbers')
	nnoremap <leader>tcs :%s/\s\+$//e<CR>
	call Desc('t.cs', 'remove trailing spaces')

	" Move selection
	vnoremap j :m '>+1<cr>gv=gv
	vnoremap k :m '<-2<cr>gv=gv

" Auto commands
	autocmd vimrc BufWritePost vimrc source $MYVIMRC
	autocmd vimrc BufWritePost .Xresources silent !xrdb ~/.dotfiles/xorg/.Xresources

