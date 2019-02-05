set number
set shell=bash
set nocompatible 
filetype off 
syntax on
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
set encoding=utf-8
colorscheme spacegray
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'ajh17/spacegray.vim'

call vundle#end() 
filetype plugin indent on

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
set backspace=indent,eol,start
set gfn=Monaco:h12
vmap D y'>p
