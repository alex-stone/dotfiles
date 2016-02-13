set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

filetype off

call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/vim-handlebars'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on
