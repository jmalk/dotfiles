## Command prompt ##
export PS1="\u@\h:\w$ "

## Colorful ##
export CLICOLOR=1

## Aliases ##

# Edit this file
alias bashrc='vim ~/.bashrc && source ~/.bashrc'

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
alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias docs='cd ~/Documents'
alias dlds='cd ~/Downloads'
alias pics='cd ~/Pictures'


# Show directory contents after navigation
cd() {
    builtin cd "$*";
    nfiles=$(ls . | wc -l)
    if [ $nfiles -lt 100 ]; then
        ll
    else
        echo "(${nfiles} files)"
    fi
}
