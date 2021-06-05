call plug#begin(stdpath('config') . '/plugged')
  " Theme
  Plug 'Rigellute/shades-of-purple.vim'
	Plug 'phanviet/vim-monokai-pro'
	Plug 'herrbischoff/cobalt2.vim'
  Plug 'joshdick/onedark.vim'

	" File Explorer
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'

	" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" File search plugins
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	" React Syntax highlight
	Plug 'mxw/vim-jsx'
	Plug 'pangloss/vim-javascript'

  "Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  "Snippets
  Plug 'honza/vim-snippets'

  "Colouring Parenthesis"
  ""Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'vim-scripts/Rainbow-Parenthesis'

  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

  " Vim Commentary 
  Plug 'tpope/vim-commentary'

  " Vim Plugins for jsx highlight"
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end() 


