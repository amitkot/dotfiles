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

##
# Your previous /Users/amit/.profile file was backed up as /Users/amit/.profile.macports-saved_2011-05-10_at_10:21:51
##

# MacPorts Installer addition on 2011-05-10_at_10:21:51: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

source ~/.bashrc
