" Configuration file for NeoVim. Put this in ~/.config/nvim/init.vim

" Instructions for installing Plug: https://github.com/junegunn/vim-plug
" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'google/vim-searchindex'
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

set incsearch

set hidden

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" wild preferences
set wildignore+=node_modules/**

" Use The Silver Searcher for grepping and CtrlP
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nmap <Leader>f :grep ""<Left>

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
