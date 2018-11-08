set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the 
                            " right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line 
                            " just typed
set number                  " add line numbers
set relativenumber	        " change line numbers to relative
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set encoding=utf-8          " set encoding filetype on

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'rust-lang/rust.vim'

Plug 'BrainDeath0/Hypsteria'
Plug 'chriskempson/base16-vim'
"Plug 'w0rp/ale'

Plug 'vim-syntastic/syntastic'

Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'justinmk/vim-sneak'

call plug#end()

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_pylint_exe = 'python3 -m pylint3'
" end syntastic options

" PEP8 standard for python files
autocmd FileType python setlocal sw=4 sts=4 ts=4 textwidth=79

" JS, CSS, HTML settings
au FileType css setlocal sw=2 sts=2 ts=2
au FileType javascript setlocal sw=2 sts=2 ts=2
au FileType html setlocal sw=2 sts=2 ts=2

au FileType c setlocal sw=2 sts=2 ts=2

"set t_Co=256
"colorscheme hypsteria
let base16colorspace=256
colorscheme base16-gruvbox-dark-soft
"set background=dark
"hi Normal ctermbg=NONE
syntax on

set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
let g:powerline_pycmd="py3"
