" ~/.nvimrc (configuration file for NeoVim)

" Line numbers
set number

" Preferred indentations
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Colors and syntax highlighting
set t_Co=256
syntax enable

" Set files with extension .mdwn to be recognized as markdown
filetype on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch
