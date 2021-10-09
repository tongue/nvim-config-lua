require('plugins')
require('map')
require('lsp-settings')
require('completion')
require('colorscheme')
require('statusline')
require('find')
require('format-settings')

vim.o.number = true
vim.o.relativenumber = true
vim.o.colorcolumn = "80"
vim.o.scrolloff = 8
vim.o.signcolumn = "number"
vim.o.hidden = true
vim.o.visualbell = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true

-- backup
vim.o.backup = false
vim.o.writebackup = false

vim.o.swapfile = false
