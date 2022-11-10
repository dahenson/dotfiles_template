require('user.plugins')
require('user.completion')
require('user.language-server')

-- Appearance
vim.opt.syntax = 'on'
vim.opt.termguicolors = true
vim.cmd('colorscheme dracula')

-- General
vim.opt.colorcolumn = '120'
vim.opt.backspace = 'indent,eol,start'
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', trail = '•' }
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.showmatch = false
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.visualbell = true

-- Indentation
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Keybindings

vim.g.mapleader = ','

vim.keymap.set('n', '0', '^')
vim.keymap.set('n', '^', '0')

-- Telescope
vim.keymap.set('n', '<leader>gf', '<cmd>Telescope git_files<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>lg', '<cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope grep_string<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')

-- NERDTree
vim.keymap.set('n', '<leader>n', '<cmd>NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', '<cmd>NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', '<cmd>NERDTreeFind<CR>')

-- vimwiki
vim.g.vimwiki_list = {{path='~/Projects/dahenson/notes'}}

