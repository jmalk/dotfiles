" Configuration file for NeoVim. Put this in ~/.config/nvim/init.vim

" Install Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins by running :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

set termguicolors
set background=light
colorscheme solarized8

set title "appears on tab in iTerm
set number
set linebreak
set scrolloff=3

set tabstop=2
set shiftwidth=2
set expandtab

set incsearch
set ignorecase
set smartcase

set hidden

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Find files
set path+=**
set wildignore+=**/node_modules/**,**/build/**,**/dist/**
nmap <C-p> :find

" Use The Silver Searcher for grepping and CtrlP
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nmap <Leader>f :grep! ""<Left>

" Open quickfix window after grep
" https://www.reddit.com/r/vim/comments/bmh977/automatically_open_quickfix_window_after/
augroup quickfix
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow
  autocmd QuickFixCmdPost l* lwindow
augroup END

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1

" Mappings
"" Replace current line with date
nnoremap <Leader>d dd:.-1r !date<CR>

