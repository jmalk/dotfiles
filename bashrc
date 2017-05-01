## Command prompt ##
export PS1="\w\n$  "

## Colorful ##
export CLICOLOR=1

## Auto-completion ##

# Git autocomplete
if [ ! -d ~/dotfiles/git ]; then
    echo "Making directory: 'git'"
    mkdir ~/dotfiles/git
fi

if [ ! -f ~/dotfiles/git/git-completion.bash ]; then
    echo "No git completion file, attempting to download."
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/dotfiles/git/git-completion.bash
fi

if [ -f ~/dotfiles/git/git-completion.bash ]; then
    source ~/dotfiles/git/git-completion.bash
fi

## Aliases ##

# Edit this file
alias bashrc='nvim ~/dotfiles/bashrc && source ~/.bashrc'

# Edit other configs
alias vimrc='vim ~/.vimrc'

# git
alias g='git'
alias checkin='git pull -r && git push'

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
alias dev='c ~/develop'

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
