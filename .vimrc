" ~/.vimrc (configuration file for vim)

call plug#begin('~/.vim/bundle')
Plug 'syntastic'
Plug 'solarized'
call plug#end()

" Line numbers, colors and syntax highlighting
set number
set cursorline
set t_Co=256
set background=dark
syntax enable
colorscheme solarized

" UI options
set wildmenu " visual autocomplete for command menu
set lazyredraw " only redraw when you need to

" Navigation fixes
set backspace=indent,eol,start

" Preferred indentations
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
filetype on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
