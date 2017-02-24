" Configuration file for NeoVim. Put this in ~/.config/nvim/init.vim

" Instructions for installing Plug: https://github.com/junegunn/vim-plug
" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set background=light
colorscheme solarized
