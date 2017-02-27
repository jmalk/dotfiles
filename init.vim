" Configuration file for NeoVim. Put this in ~/.config/nvim/init.vim

" Instructions for installing Plug: https://github.com/junegunn/vim-plug
" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
call plug#end()

set background=light
colorscheme solarized
set list
set listchars=tab:▸\ ,eol:¬,nbsp:+
set number
set linebreak
set scrolloff=3

set tabstop=2
set shiftwidth=2
set expandtab

" NERDTree settings
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" Close Vim if NERDTree is the only buffer left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
