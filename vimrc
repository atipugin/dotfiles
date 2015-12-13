set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
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
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

set noswapfile
set nobackup
set t_Co=256
set autowrite
set laststatus=2

syntax on
colorscheme hybrid

set number
set numberwidth=5

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set cursorline
hi CursorLine cterm=none ctermbg=23 ctermfg=none

set ruler
set colorcolumn=80
set wrap

set hlsearch
set incsearch
set ignorecase
set smartcase

set scrolloff=2

let g:ctrlp_working_path_mode = 0

map <C-n> :NERDTreeToggle<CR>
map <F5> :sort<CR>

nmap ; :

nnoremap <Left> :echoe 'Use h'<CR>
nnoremap <Right> :echoe 'Use l'<CR>
nnoremap <Up> :echoe 'Use k'<CR>
nnoremap <Down> :echoe 'Use j'<CR>

nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

autocmd FileType ruby map <buffer> <Leader>b :!ruby %<CR>
autocmd FileType go map <buffer> <Leader>b :!go run %<CR>

autocmd BufNewFile,BufRead Gemfile set filetype=ruby
