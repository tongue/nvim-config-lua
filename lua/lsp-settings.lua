local vimp = require('vimp')

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

 vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
   vim.lsp.diagnostic.on_publish_diagnostics, {
     underline = false,
     virtual_text = false,
   }
 )

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

vimp.nnoremap({ 'silent' }, 'gd', ':lua vim.lsp.buf.definition()<cr>')
vimp.nnoremap({ 'silent' }, 'gD', ':lua vim.lsp.buf.declaration()<cr>')

require'lspsaga'.init_lsp_saga {
  use_saga_diagnostic_sign = true
}
vimp.nnoremap({ 'silent' }, '<leader>ca', ':Lspsaga code_action<cr>')
vimp.vnoremap({ 'silent' }, '<leader>ca', ':<C-U>Lspsaga range_code_action<cr>')
vimp.nnoremap({ 'silent' }, 'K', ':Lspsaga hover_doc<cr>')
vimp.nnoremap({ 'silent' }, 'gr', ':Lspsaga rename<cr>')
vimp.nnoremap({ 'silent' }, 'L', ':Lspsaga show_line_diagnostics<cr>')
vimp.nnoremap({ 'silent' }, 'gs', ':Lspsaga signature_help<cr>')
vimp.nnoremap({ 'silent' }, '[e', ':Lspsaga diagnostic_jump_next<CR>')
vimp.nnoremap({ 'silent' }, ']e', ':Lspsaga diagnostic_jump_prev<CR>')
