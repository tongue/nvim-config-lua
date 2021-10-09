local vimp = require('vimp')

vim.g.mapleader = " "

vimp.nnoremap('<leader>w', ':w<cr>')
vimp.nnoremap('<bs><bs>', ':only<cr>')
vimp.nnoremap('<esc><esc>', ':nohl<cr>')
vimp.nnoremap('-', ':NnnPicker %:p:h<cr>')

