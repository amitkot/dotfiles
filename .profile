export EDITOR=/usr/local/bin/mvim
export GIT_EDITOR=/usr/bin/vim
export ANDROID_HOME=/Applications/Dev/android-sdk-mac_86
export ANDROID=${ANDROID_HOME}
export ANDROID_SDK=${ANDROID_HOME}
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
export ANDROID_SWT=${ANDROID_HOME}/tools/lib/x86_64

# terminal things
export CLICOLOR=1
export TERM=xterm-color

cdproj() { cd ~/dev/workspaces/wefi_src/git_wefi; }
rmorig() { git status | grep "^#	" | grep ".orig$" | cut -d"#" -f2- | xargs rm; }

if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then  
        . /usr/local/git/contrib/completion/git-completion.bash
        GIT_PS1_SHOWDIRTYSTATE=true
        export PS1='\[\e[33m\]\W\[\e]0;\w\a\]\[\e[32m\]$(__git_ps1 "(%s)") \[\e[0m\]\$ '  
else
	echo "Git bash completion is not installed!"
fi

# trying out the vi binding
set -o vi

# open a man page in Preview
pman () {
    man -t "$@" | open -f -a /Applications/Preview.app
}

source ~/.bashrc
