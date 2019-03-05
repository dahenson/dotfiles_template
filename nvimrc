" Make sure plug is loaded

call plug#begin('~/.config/nvim/plugged')

" Plugins: {
    Plug 'tpope/vim-fugitive'
    Plug 'arrufat/vala.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'vim-airline/vim-airline'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'nvie/vim-flake8'
" }

call plug#end()

let mapleader = "," " Remap leader to ','
syntax on
syntax enable
set t_Co=256

" General: {
    set number " Show Line Numbers
    set visualbell " Use visual bell instead of beep
    set showmatch " highlight matching brace

    set hlsearch " Highlight all search results
    set smartcase " Enable smart case search
    set ignorecase " Always case-insensitive
    set incsearch " searches for strings incrementally
    set splitright " vertical splits happen right of current window
    set splitbelow " horizontal splits happen below current window

    set autoindent " Auto-indent new lines
    set smartindent " Smart indent based on syntax
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    set nofoldenable
" }

" Advanced: {
    set ruler " Show row and column ruler information
    set backspace=indent,eol,start " backspace behavior
    set list
    set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
    set showbreak=↪
" }

