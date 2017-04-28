" ~/.vimrc (configuration file for vim)

" Use mouse if possible
if has('mouse')
  set mouse=a
endif

" Display
syntax enable
set number
set cursorline
set laststatus=2
set t_Co=256
set linebreak
set scrolloff=3
set wildmenu

" Only redraw when necessary
set lazyredraw

" Open new splits below and right
set splitbelow
set splitright

" Text editing
set backspace=indent,eol,start

" Indentation
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

"" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
