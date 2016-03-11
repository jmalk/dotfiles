" ~/.vimrc (configuration file for vim)

" Install plugins by running :PlugInstall
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/NERDTree'
Plug 'vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'syntastic'
Plug 'solarized'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'ternjs/tern_for_vim'
Plug 'AlessandroYorba/Sierra'
call plug#end()

" Show line numbers
set number

" Highlight line cursor is on
set cursorline

" Use 256 colors
set t_Co=256

" Turn on syntax highlighting
syntax enable

" Use sierra colorscheme
colorscheme sierra

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

" Move up/down a visual line, not a whole text line
nnoremap j gj
nnoremap k gk

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

" Case sensitivity of searches
set ignorecase
set smartcase
set incsearch

" Set files with extension .mdwn to be recognized as markdown
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

""" Plugin-specific options

" Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1

" Display fugitive diffs side-by-side
set diffopt=vertical
