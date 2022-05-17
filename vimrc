set nocompatible

if has('filetype')
	filetype on
endif

filetype plugin on

filetype indent on

set number
set ruler
set showcmd

if has('syntax')
	syntax on
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set hidden
set wildmenu
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set laststatus=2
set confirm
set smartindent
set incsearch
set visualbell
set colorcolumn=150
set t_vb=
set noswapfile
set undodir=~/.vim/undodir
set undofile
set autochdir

if has('mouse')
	set mouse=a
endif

set cmdheight=2
set notimeout ttimeout ttimeoutlen=200

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-ruby/vim-ruby'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-endwise'
call plug#end()

colorscheme gruvbox
set background=dark
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
highlight ColorColumn ctermbg=0 guibg=lightgrey
let mapleader = " "

nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>r :wincmd r<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>q :wincmd h<CR>
nnoremap <leader>g :G

command Gst Git status
command Ga Git add
command Gp Git push
command Gcmsg git commit -m
command Gcb Git checkout -b
command Gcm Git checkout master
command Gco Git checkout
command Gd Git checkout --
command Gl Git pull

