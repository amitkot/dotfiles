set nocompatible               " be iMproved
filetype on                    " required to fix a problem with stock vim on OSX
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles begin

" original repos on github
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'

" vim-scripts repos 
Bundle 'pyflakes.vim'

" non github repos

" Bundles end

filetype plugin indent on     " required!
