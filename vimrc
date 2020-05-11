" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'

call plug#end()

" ------------------------------------------------------------------------------
" Settings
" ------------------------------------------------------------------------------

let &t_SI = "\<Esc>[5 q"
let &t_EI = "\<Esc>[2 q"

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

if has('termguicolors')
  set termguicolors
endif

colorscheme gruvbox

set wildmenu
set wildmode=longest:full,full

set backspace=2

set notimeout
set ttimeout
set ttimeoutlen=10

set updatetime=100

set number
set numberwidth=5

set nobackup
set nowritebackup
set noswapfile

set textwidth=80
set colorcolumn=+1

set laststatus=2

set mouse=a

set splitright
set splitbelow

set hidden
set autoread

set formatoptions=rqn1

set incsearch
set hlsearch
set ignorecase
set smartcase

set signcolumn=yes

set clipboard=unnamed

" ------------------------------------------------------------------------------
" Autocommands
" ------------------------------------------------------------------------------

augroup filetypedetect
  au BufNewFile,BufRead Brewfile setf ruby
augroup END

au VimResized * wincmd =

" ------------------------------------------------------------------------------
" Plugin settings
" ------------------------------------------------------------------------------

let g:NERDSpaceDelims = 1

let g:lightline = { 'colorscheme': 'gruvbox' }

let g:coc_global_extensions = [
  \'coc-json',
  \'coc-solargraph',
  \'coc-vimlsp',
  \]

" ------------------------------------------------------------------------------
" Mappings
" ------------------------------------------------------------------------------

let mapleader = ','

nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
