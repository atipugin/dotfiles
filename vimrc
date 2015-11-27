set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-startify'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

set noswapfile
set t_Co=256

syntax on
colorscheme Tomorrow-Night

set number
set numberwidth=5

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set cursorline
hi CursorLine cterm=none ctermbg=23 ctermfg=none

map <C-n> :NERDTreeToggle<CR>
map <F5> :sort<CR>
