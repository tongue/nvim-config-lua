local vimp = require('vimp')
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {
        ui = {
            icons = {
                -- The list icon to use for installed servers.
                server_installed = "◍",
                -- The list icon to use for servers that are pending installation.
                server_pending = "◍",
                -- The list icon to use for servers that are not installed.
                server_uninstalled = "◍",
            },
            keymaps = {
                -- Keymap to expand a server in the UI
                toggle_server_expand = "<CR>",
                -- Keymap to install a server
                install_server = "i",
                -- Keymap to reinstall/update a server
                update_server = "u",
                -- Keymap to uninstall a server
                uninstall_server = "X",
            },
        },

        pip = {
            -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
            -- and is not recommended.
            --
            -- Example: { "--proxy", "https://proxyserver" }
            install_args = {},
        },

        -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
        -- debugging issues with server installations.
        log_level = vim.log.levels.INFO,

        -- Whether to allow LSP servers to share the same installation directory. For some servers, this effectively causes
        -- more than one server to be installed (and uninstalled) when executing `:LspInstall` and `:LspUninstall`. For
        -- example, installing `cssls` will also install both `jsonls` and `html` (and the other ways around), as these all
        -- share the same underlying package.
        allow_federated_servers = true,

        -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
        -- servers that are requested to be installed will be put in a queue.
        max_concurrent_installers = 4,
    }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

vimp.nnoremap({ 'silent' }, 'gd', ':lua vim.lsp.buf.definition()<cr>')
vimp.nnoremap({ 'silent' }, 'gD', ':lua vim.lsp.buf.declaration()<cr>')

require'lspsaga'.init_lsp_saga {
  use_saga_diagnostic_sign = true,
  code_action_prompt = {
    enable = true,
    sign = false,
    sign_priority = 20,
    virtual_text = false,
  },
}
vimp.nnoremap({ 'silent' }, '<leader>ca', ':Lspsaga code_action<cr>')
vimp.vnoremap({ 'silent' }, '<leader>ca', ':<C-U>Lspsaga range_code_action<cr>')
vimp.nnoremap({ 'silent' }, 'K', ':Lspsaga hover_doc<cr>')
vimp.nnoremap({ 'silent' }, 'gr', ':Lspsaga rename<cr>')
vimp.nnoremap({ 'silent' }, 'L', ':Lspsaga show_line_diagnostics<cr>')
vimp.nnoremap({ 'silent' }, 'gs', ':Lspsaga signature_help<cr>')
vimp.nnoremap({ 'silent' }, '[e', ':Lspsaga diagnostic_jump_next<CR>')
vimp.nnoremap({ 'silent' }, ']e', ':Lspsaga diagnostic_jump_prev<CR>')
vimp.nnoremap({ 'silent' }, 'gh', ':Lspsaga lsp_finder<CR>')

local vimp = require('vimp')

require('telescope').setup{ }

vimp.nnoremap('<leader>ff', ':Telescope find_files<cr>')
vimp.nnoremap('<leader>o', ':Telescope git_files<cr>')
vimp.nnoremap('<leader>fg', ':Telescope live_grep<cr>')
vimp.nnoremap('<leader>fe', ':Telescope buffers<cr>')
vimp.nnoremap('<leader>e', ':Telescope oldfiles<cr>')
vimp.nnoremap('<leader>fs', ':Telescope grep_string<cr>')
vimp.nnoremap('<leader>gR', ':Telescope lsp_references<cr>')
vimp.nnoremap('<leader>gs', ':Telescope git_status<cr>')
vimp.nnoremap('<leader>gS', ':Telescope git_stash<cr>')
vimp.nnoremap('<leader>gb', ':Telescope git_branches<cr>')
