## Command prompt ##
export PS1="\h : \w\n$  "

## Colorful ##
export CLICOLOR=1

## Auto-completion ##

# Git autocomplete
if [ ! -f ~/git-completion.bash ]; then
    echo "No git completion file, attempting to download."
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/git-completion.bash
fi

if [ -f ~/git-completion.bash ]; then
    source ~/git-completion.bash && echo "Git autocomplete enabled."
fi

#Grunt autocomplete
if [ ! -f ~/grunt-completion.bash ]; then
    echo "No grunt completion file, attempting to generate."
    grunt --completion=bash > ~/grunt-completion.bash
fi

if [ -f ~/grunt-completion.bash ]; then
    source ~/grunt-completion.bash && echo "Grunt autocomplete enabled."
fi

## Aliases ##

# Edit this file
alias bashrc='vim ~/.bashrc && source ~/.bashrc'

# Edit other configs
alias vimrc='vim ~/.vimrc'

# git
alias g='git'
alias got='git'

# doge-git
alias wow='git status'
alias such='git'
alias very='git'
alias many='git'
alias much='git'

# Preferred ls implementation
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -al'

# Directory navigation
alias ~='c ~'
alias ..='c ../'
alias ...='c ../../'
alias ....='c ../../../'
alias .....='c ../../../../'
alias docs='c ~/Documents'
alias dlds='c ~/Downloads'
alias pics='c ~/Pictures'
alias jrnl='c ~/Box Sync/journal'

# Show directory contents after navigation
function c() {
    builtin cd "$*";
    nfiles=$(ls . | wc -l)
    if [ $nfiles -lt 100 ]; then
        ll
    else
        echo "(${nfiles} files)"
    fi
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
