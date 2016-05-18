## Command prompt ##
export PS1="\h:\w$ "

## Colorful ##
export CLICOLOR=1

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
alias journal='c ~/journal'

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

