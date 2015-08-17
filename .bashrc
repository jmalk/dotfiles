## Command prompt ##
export PS1="\u@\h:\w$ "

## Colorful ##
export CLICOLOR=1

## Aliases ##

# Edit this file
alias bashrc='vim ~/.bashrc && source ~/.bashrc'

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
