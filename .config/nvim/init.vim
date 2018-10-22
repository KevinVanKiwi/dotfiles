set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber	        " change line numbers to relative
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set encoding=utf-8          " set encoding filetype on

call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
"Plug 'tweekmonster/deoplete-clang2'
" Go lang
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
"Plug 'zchee/deoplete-go', { 'do': 'make' }
" end Go lang

Plug 'wimstefan/vim-artesanal'
"Plug 'calviken/vim-gdscript3'

Plug 'rust-lang/rust.vim'

Plug 'w0rp/ale'

Plug 'vim-syntastic/syntastic'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'justinmk/vim-sneak'

call plug#end()

let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

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
autocmd FileType python setlocal sw=4 sts=4 ts=4 textwidth=79 fileformat=unix

" JS, CSS, HTML settings
au FileType css setlocal sw=2 sts=2 ts=2
au FileType javascript setlocal sw=2 sts=2 ts=2
au FileType html setlocal sw=2 sts=2 ts=2

syntax on
set background=dark
let g:solarized_termcolors=256
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
set termguicolors

colorscheme artesanal
