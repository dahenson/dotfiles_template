" Make sure plug is loaded

call plug#begin('~/.config/nvim/plugged')

" Plugins: {
    Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
    Plug 'arrufat/vala.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Appearance
    Plug 'itchyny/lightline.vim'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'lifepillar/vim-solarized8'
    Plug 'icymind/NeoSolarized'

    " Python
    Plug 'nvie/vim-flake8'

    " Git
    Plug 'tpope/vim-fugitive'
" }

call plug#end()

let mapleader = "," " Remap leader to ','
syntax on
syntax enable
set background=dark
set termguicolors
colorscheme NeoSolarized

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

" fzf: {
    nmap <leader><tab> <plug>(fzf-maps-n)
    xmap <leader><tab> <plug>(fzf-maps-x)
    omap <leader><tab> <plug>(fzf-maps-o)

    " Insert mode completion
    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    nnoremap <silent> ,t :Files<CR>
    nnoremap <silent> ,b :Buffers<CR>
    nnoremap <silent> ,w :Windows<CR>
" }

" Keymaps: {
" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
    nnoremap 0 ^
    nnoremap ^ 0
" }
