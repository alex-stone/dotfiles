call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

colorscheme jellybeans

se nocompatible
se nobackup
se nowritebackup
se hidden
se history=1000
se encoding=utf-8

se showcmd
se showmode
se backspace=indent,eol,start
se wildmenu
se wildmode=list:longest
se ignorecase
se smartcase
se number
se incsearch
se hlsearch
se scrolloff=3
se visualbell
se tabstop=2
se softtabstop=2
se shiftwidth=2
se expandtab
se autoindent
se cmdheight=2
se cursorline
se laststatus=2
se clipboard=unnamed
se ttyfast
se textwidth=79
se winwidth=84
se formatoptions=qrn1
se nolist
se showmatch

let mapleader=','

let g:ctrlp_map='<leader>f'
let g:ctrlp_max_height=20

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
