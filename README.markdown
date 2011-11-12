Steps for a new computer
========================

Vim
---
1. git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
2. install all your vim plugins:
<pre>
    vim -u bundles.vim +BundleInstall +q
</pre>
(http://gmarik.info/blog/2011/05/17/chicken-or-egg-dilemma)



Windows specific
----------------
To clone this to your home directory follow these steps:

1. open MSYSGIT bash shell on your user's home directory

2. run these commands:

<pre>
    cd ~/..
    git clone --no-checkout http://github.com/amitkot/dotfiles ~/dotfiles.tmp # might want --no-hardlinks for cloning local repo
    mv ~/dotfiles.tmp/.git ~/
    rm -rf ~/dotfiles.tmp
    cd ~
    git reset --hard HEAD # git thinks all files are deleted, this reverses that behaviour
</pre>
(http://stackoverflow.com/questions/2411031/git-how-do-i-clone-into-a-non-empty-directory)



Cloning the submodules
----------------------
First, we need to initialize the submodule(s). We can do that with the following command:

<pre>
[user@office SampleTheme]$ git submodule init
Submodule 'lib/billboard' (git@mygithost:billboard) registered for path 'lib/billboard'
</pre>

Then we need to run the update in order to pull down the files.
<pre>
[user@office SampleTheme]$ git submodule update
Initialized empty Git repository in ~/git_dev/SampleTheme/lib/billboard/.git/
remote: Counting objects: 26, done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 26 (delta 5), reused 0 (delta 0)
Receiving objects: 100% (26/26), 17.37 KiB, done.
Resolving deltas: 100% (5/5), done.
Submodule path 'lib/billboard': checked out '1c407cb2315z0847facb57d79d680f88ca004332'
</pre>
(http://chrisjean.com/2009/04/20/git-submodules-adding-using-removing-and-updating/)