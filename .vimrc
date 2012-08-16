call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

colorscheme jellybeans

set nocompatible
set nobackup
set nowritebackup
set noswapfile
set hidden
set history=1000
set encoding=utf-8

set showcmd
set showmode
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set number
set incsearch
set hlsearch
set scrolloff=3
set visualbell
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cmdheight=2
set cursorline
set laststatus=2
set clipboard=unnamed
set ttyfast
set textwidth=79
set winwidth=84
set formatoptions=qrn1
set nolist
set showmatch

let mapleader=','

let g:ctrlp_map='<leader>f'
let g:ctrlp_max_height=20
let g:ctrlp_custom_ignore = { 'dir': '/bundle$/' }

let g:bufExplorerDefaultHelp=0

nnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap ; :
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader><leader> <c-^>
nnoremap <leader>a :BufExplorer<cr>
nnoremap <space> <c-d>
vnoremap / /\v
inoremap <leader><Tab> <C-n>
map <leader>e :edit %%
