" ~/.nvimrc (configuration file for NeoVim)

" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set background=light
colorscheme solarized
