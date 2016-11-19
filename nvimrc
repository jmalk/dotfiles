" ~/.nvimrc (configuration file for NeoVim)

" Line numbers, colors and syntax highlighting
set number
set cursorline
set t_Co=256
syntax enable

" Don't let words overflow end of line (word wrap?)
set linebreak

" UI options
set wildmenu " visual autocomplete for command menu
set lazyredraw " only redraw when you need to

" Split below and right
set splitbelow
set splitright

" Backspace over anything
set backspace=indent,eol,start

" Move up/down a visual line, not a whole text line (more intuitive)
nnoremap j gj
nnoremap k gk

" Keep a few lines visible above or below the cursor
set scrolloff=3

" Preferred indentations
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Two-space indentations
au FileType ruby setl sw=2 sts=2 et
au FileType scss setl sw=2 sts=2 et

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
