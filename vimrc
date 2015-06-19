set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-git'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'rust-lang/rust.vim'
Plugin 'phildawes/racer'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

" ======================================


" Tailing space
match ErrorMsg '\s\+$'
command! TrimWhiteSpace %s/\s\+$//e

" Rust's racer
set hidden
let g:racer_cmd = "/Users/anton/dev/rust/racer/target/release/racer"
let $RUST_SRC_PATH = "/Users/anton/dev/rust/rust/src/"

" Search
set incsearch
set ignorecase
set smartcase

" Indentation
set cindent
set smartindent
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Leader, mouse, undo-redo, swap
let mapleader=","
set mouse=a
set number
set undofile
set undodir=~/.vim/undo
set directory=~/.vim/swap

" Fuzzy Finder
let g:fuf_file_exclude = 'target'
let g:fuf_coveragefile_exclude = 'target'
map <leader>f :FufFile<CR>
map <leader>c :FufCoverageFile<CR>
map <leader>b :FufBuffer<CR>

"vim-coffeescript
autocmd BufWritePost *.coffee silent make!
let coffee_make_options = '--bare'

" Solarized
set background=dark
colorscheme solarized

if has("gui_macvim")
    set guifont=Inconsolata:h14
    autocmd BufLeave,FocusLost * wall
else
    set guifont=Inconsolata
endif
