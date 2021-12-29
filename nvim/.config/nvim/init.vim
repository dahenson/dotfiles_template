" Make sure plug is loaded

call plug#begin('~/.config/nvim/plugged')

" Plugins: {
    " Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'

    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ishan9299/nvim-solarized-lua'
    " Plug 'morhetz/gruvbox'
    " Plug 'itchyny/lightline.vim'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'lifepillar/vim-solarized8'
    " Plug 'icymind/NeoSolarized'

    " Languages
    Plug 'sheerun/vim-polyglot'   " All the languages syntaxes!
    Plug 'neovim/nvim-lspconfig'  " Common LSP Configurations

    " Rails
    Plug 'tpope/vim-bundler'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-rake'
    Plug 'tpope/vim-rvm'

    " Git
    Plug 'tpope/vim-fugitive'
" }
call plug#end()

let mapleader = "," " Remap leader to ','

lua << EOF
require'lspconfig'.solargraph.setup{}
EOF

" Appearance: {
    syntax on
    syntax enable

    if (has("termguicolors"))
      set termguicolors
    endif

    colorscheme solarized
    let g:airline_powerline_fonts=1
" }

" General: {
    set number          " Show Line Numbers
    set visualbell      " Use visual bell instead of beep
    set showmatch       " highlight matching brace
    set colorcolumn=99  " highlight column 99

    set hlsearch     " Highlight all search results
    set smartcase    " Enable smart case search
    set ignorecase   " Always case-insensitive
    set incsearch    " searches for strings incrementally
    set splitright   " vertical splits happen right of current window
    set splitbelow   " horizontal splits happen below current window

    set autoindent   " Auto-indent new lines
    set smartindent  " Smart indent based on syntax
    set expandtab    " Convert tabs to spaces
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2

    set breakindent " Wrap long lines *with* indentation
    set breakindentopt=shift:2

    set nofoldenable
" }

" Advanced: {
    set ruler " Show row and column ruler information
    set backspace=indent,eol,start " backspace behavior
    set list
    set listchars=tab:→\ ,trail:⋅,extends:❯,precedes:❮
    set showbreak=↳
" }

" fzf: {
    set rtp+=/usr/local/opt/fzf

    nmap <leader><tab> <plug>(fzf-maps-n)
    xmap <leader><tab> <plug>(fzf-maps-x)
    omap <leader><tab> <plug>(fzf-maps-o)

    " Insert mode completion
    imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)

    nnoremap <silent> <leader>t :Files<CR>
    nnoremap <silent> <leader>b :Buffers<CR>
    nnoremap <silent> <leader>w :Windows<CR>
" }

" Keymaps: {
" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
    nnoremap 0 ^
    nnoremap ^ 0

    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
" }
