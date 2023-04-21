vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = false
vim.o.swapfile = false

vim.o.hidden = true
vim.o.wildmenu = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoindent = true
vim.o.laststatus=2
vim.o.confirm = true
vim.o.smartindent = true
vim.o.incsearch = true
vim.o.visualbell = true
vim.o.colorcolumn=150
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.autochdir = true
vim.o.relativenumber = true
vim.o.number = true

vim.go.hlsearch = false 
vim.go.ruler = true
vim.go.cmdheight = 2
vim.go.ttimeout = 200
vim.go.ttimeoutlen = 200

vim.g.mapleader = " "

vim.o.updatetime=100

vim.api.nvim_create_autocmd("BufEnter", {command = "autocmd FileType nerdtree setlocal relativenumber"})
