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

# Abbreviations
alias nrt="npm run test"
alias nrs="npm run spec"

# Edit this file
alias bashrc='nvim ~/dotfiles/bashrc && source ~/.bashrc'

# Edit other configs
alias vimrc='vim ~/.vimrc'

# git
alias g='git'
alias st='git status'
alias updt='git stash && git pull -r && git stash apply'

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
alias dev='c ~/dev'
alias ws='c ~/workspace'

# Make a directory, then cd in!
function mcd() {
    mkdir -p $1
    cd $1
}

export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source ~/.sharedrc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
