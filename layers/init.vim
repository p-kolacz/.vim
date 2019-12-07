call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-eunuch'

	Plug 'scrooloose/nerdtree'
	Plug 'wincent/terminus'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'Shougo/echodoc.vim'
	Plug 'yuttie/comfortable-motion.vim'

	Plug 'mhartington/oceanic-next'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'sheerun/vim-polyglot'
	Plug 'dense-analysis/ale'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'rking/ag.vim'
	Plug 'SirVer/ultisnips'
	Plug 'clktmr/vim-gdscript3'
	Plug 'nvie/vim-flake8'
call plug#end()

let $LAYERS=fnamemodify(expand($MYVIMRC), ':h').'/layers'

source $LAYERS/fugitive.vim
source $LAYERS/oceanic-next.vim
source $LAYERS/nerdtree.vim
source $LAYERS/airline.vim
source $LAYERS/ctrlp.vim
source $LAYERS/ale.vim
source $LAYERS/coc.vim
source $LAYERS/ag.vim
source $LAYERS/ultisnips.vim
source $LAYERS/gdscript3.vim

nnoremap <leader>ppi :PlugInstall<CR>
nnoremap <leader>ppu :PlugUpdate<CR>
nnoremap <leader>ppc :PlugClean<CR>
