" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Onedark theme
	Plug 'joshdick/onedark.vim'
	" Coc Intellisense autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Airline and themes
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Ranger plugin
	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	" Colorizer
	Plug 'norcalli/nvim-colorizer.lua'
	" Rainbow brackets
	Plug 'junegunn/rainbow_parentheses.vim'

	call plug#end()


autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
