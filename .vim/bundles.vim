set nocompatible               " be iMproved
filetype on                    " required to fix a problem with stock vim on OSX
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles begin

" original repos on github
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-ragtag'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'

" vim-scripts repos 
Bundle 'pyflakes.vim'
Bundle 'matchit.zip'
Bundle 'pythoncomplete'

" non github repos

" Bundles end

filetype plugin indent on     " required!
