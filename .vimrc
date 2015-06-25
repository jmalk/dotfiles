" ~/.vimrc (configuration file for vim)

" Load plugins with vim-plug
call plug#begin('~/.vim/bundle')
Plug 'syntastic'
Plug 'scrooloose/nerdtree'
Plug 'solarized'
call plug#end()

" Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Line numbers
set number

" Navigation fixes
set backspace=indent,eol,start

" Preferred indentations
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Colors and syntax highlighting
set t_Co=256
syntax enable
set background=dark
colorscheme solarized

" Set files with extension .mdwn to be recognized as markdown
filetype on
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch
