" Configuration file for NeoVim. Put this in ~/.config/nvim/init.vim

" Instructions for installing Plug: https://github.com/junegunn/vim-plug
" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set background=light
colorscheme solarized
set title "appears on tab in iTerm
set number
set linebreak
set scrolloff=3

set tabstop=2
set shiftwidth=2
set expandtab

" wild preferences
set wildignore+=node_modules/**

" NERDTree settings
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" Close Vim if NERDTree is the only buffer left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
