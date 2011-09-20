" .vimrc


set runtimepath^=~/.vim     " Use instead of "vimfiles" on windows

" Vundle and bundles configuration
source ~/.vim/bundles.vim


"To avoid issues, use unix line-endings by default
set fileformats=unix,dos,mac

" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces

function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set noexpandtab
  autocmd User Rails set softtabstop=4
  autocmd User Rails set shiftwidth=4
  autocmd User Rails set tabstop=4
  autocmd User Rails set noexpandtab
endfunction

function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set expandtab
endfunction

call Tabstyle_spaces()


" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)


" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark 
syntax on " syntax highlighting
"set guifont=Consolas:h12,Monaco:h12,Inconsolata:h12
colorscheme ir_black


set hls
set nowrap

function! Android_syntax()
	colorscheme macvim
	set background=light 
	set syntax=logcatw
	set guifont=Monaco:h11
endfunction

map	<F2>	:call Android_syntax()

if exists('+autochdir')
	set autochdir
else
	autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif


filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

"
" Searching options

set hlsearch
set incsearch
set ignorecase smartcase
