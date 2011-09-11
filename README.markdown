Steps for a new computer
========================

Vim
---
1. git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
2. install all your vim plugins:
    vim -u bundles.vim +BundleInstall +q



Windows specific
----------------
To clone this to your home directory follow these steps:

1. open MSYSGIT bash shell on your user's home directory

2. run these commands:

    cd ~/..
    git clone --no-checkout http://github.com/amitkot/dotfiles ~/dotfiles.tmp # might want --no-hardlinks for cloning local repo
    mv ~/dotfiles.tmp/.git ~/
    rm -rf ~/dotfiles.tmp
    cd ~
    git reset --hard HEAD # git thinks all files are deleted, this reverses that behaviour

(http://stackoverflow.com/questions/2411031/git-how-do-i-clone-into-a-non-empty-directory)
