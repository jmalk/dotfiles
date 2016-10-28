" ~/.vimrc (configuration file for vim)

" Install plugins by running :PlugInstall
" call plug#begin('~/.vim/bundle')
" Plug 'altercation/vim-colors-solarized'
" Plug 'vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'syntastic'
" Plug 'tpope/vim-fugitive'
" call plug#end()

" Show line numbers
set number

" Highlight line cursor is on
set cursorline

" Use 256 colors
set t_Co=256

" Turn on syntax highlighting
syntax enable

" Don't let words overflow end of line (word wrap?)
set linebreak

" Visual autocomplete for command menu
set wildmenu

" Only redraw when necessary
set lazyredraw

" Open new splits below and right
set splitbelow
set splitright

" Backspace over anything
set backspace=indent,eol,start

" Keep a few lines visible above or below the cursor when scrolling
set scrolloff=3

" Preferred indentations
filetype plugin indent on

" Four-space indentations by default
set tabstop=4
set shiftwidth=4
set expandtab

" Two-space indentations for some filetypes
au FileType ruby setl sw=2 sts=2 et
au FileType scss setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
