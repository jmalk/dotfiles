" ~/.nvimrc (configuration file for NeoVim)

" Install plugins by running :PlugInstall
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

" Use mouse if possible
if has('mouse')
  set mouse=a
endif

" UI / Display
syntax enable
set number
set cursorline
set t_Co=256
set linebreak
set lazyredraw
set scrolloff=3
set splitbelow
set splitright
set backspace=indent,eol,start

" Statusline
set laststatus=2

" Command autocompletion
set wildmenu " visual autocomplete for command menu

" Preferred indentations
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

" NERDTree settings
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" Close Vim if NERDTreeis the only buffer left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

