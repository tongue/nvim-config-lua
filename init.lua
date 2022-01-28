local vimp = require('vimp')

vim.cmd([[
	let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
	]]);

require('plugins')

require('statusline')

--
-- settings
vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.hidden = true
vim.o.colorcolumn = "0"
vim.o.scrolloff = 8
vim.o.signcolumn = "number"
vim.o.hidden = true
vim.o.visualbell = true
vim.o.wrap = false

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true

vim.o.backup = false
vim.o.writebackup = false

vim.o.swapfile = false

vim.o.completeopt = "menuone,noselect"

vim.o.encoding = "utf-8"
vim.o.cmdheight = 2

vim.g.rose_pine_variant = "moon"
vim.o.background = "dark"
vim.cmd('colorscheme rose-pine')

vim.cmd('let g:vim_svelte_plugin_use_typescript = 1')

--
-- maps
vimp.nnoremap('<leader>w', ':w<cr>')
vimp.nnoremap('<bs><bs>', ':only<cr>')

-- coc
vimp.nnoremap({ 'silent' }, 'K', [[:call CocActionAsync('doHover')<cr>]])
vimp.nmap({ 'silent' }, ']e', '<Plug>(coc-diagnostic-next)')
vimp.nmap({ 'silent' }, '[e', '<Plug>(coc-diagnostic-prev)')
vimp.nmap({ 'silent' }, 'gd', '<Plug>(coc-definition)')
vimp.nmap({ 'silent' }, 'gi', '<Plug>(coc-implementation)')
vimp.nmap({ 'silent' }, 'gr', '<Plug>(coc-references)')
vimp.nmap({ 'silent' }, 'gy', '<Plug>(coc-type-definition)')
vimp.nmap('<leader>rn', '<Plug>(coc-rename)')
vimp.nmap('<leader>aa', '<Plug>(coc-codeaction)')
vimp.nmap('<leader>af', '<Plug>(coc-fix-current)')
vimp.nmap('<leader>ac', '<Plug>(coc-codelens-action)')
vimp.nnoremap({ 'silent', 'nowait' }, '<leader>lc', ':<C-u>CocList commands<cr>')
vimp.nnoremap({ 'silent', 'nowait' }, '<leader>ld', ':<C-u>CocList diagnostics<cr>')
vimp.nnoremap({ 'silent', 'nowait' }, '<leader>le', ':<C-u>CocList extensions<cr>')

vimp.inoremap({ 'expr', 'silent' }, '<c-space>', 'coc#refresh()')

-- nvim-tree
require'nvim-tree'.setup {}
vimp.nnoremap('<C-n>', ':NvimTreeToggle<cr>')
vimp.nnoremap('<leader>nf', ':NvimTreeFindFile<cr>')
vimp.nnoremap('<leader>nr', ':NvimTreeRefresh<cr>')

-- telescope
require('telescope').setup{ }
vimp.nnoremap({ 'silent' }, '<leader>ff', ':Telescope find_files<cr>')
vimp.nnoremap({ 'silent' }, '<leader>o', ':Telescope git_files<cr>')
vimp.nnoremap({ 'silent' }, '<leader>fg', ':Telescope live_grep<cr>')
vimp.nnoremap({ 'silent' }, '<leader>fe', ':Telescope buffers<cr>')
vimp.nnoremap({ 'silent' }, '<leader>e', ':Telescope oldfiles<cr>')
vimp.nnoremap({ 'silent' }, '<leader>fs', ':Telescope grep_string<cr>')
vimp.nnoremap({ 'silent' }, '<leader>gR', ':Telescope lsp_references<cr>')
vimp.nnoremap({ 'silent' }, '<leader>gs', ':Telescope git_status<cr>')
vimp.nnoremap({ 'silent' }, '<leader>gS', ':Telescope git_stash<cr>')
vimp.nnoremap({ 'silent' }, '<leader>gb', ':Telescope git_branches<cr>')

vimp.nnoremap('-', ':NnnPicker %:p:h<cr>')
