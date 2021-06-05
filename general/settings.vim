"#= Other Settings =============================================================
syntax on
set number
set ruler
set encoding=UTF-8
if !exists('g:syntax_on')
	syntax enable
endif

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2


set cindent
set smartindent

set mouse=a
set wrap
set linebreak
set autoindent
set textwidth=0
set wrapmargin=0
set shell=zsh

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Visual selection 
hi Visual  guifg=Black guibg=LightBlue gui=none
" Parentheses
" set showmatch
" let g:loaded_matchparen=1


" Put all setting that has to go last:
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
