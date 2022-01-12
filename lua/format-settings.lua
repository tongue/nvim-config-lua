require("formatter").setup {
    filetype = {
        typescriptreact = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        typescript = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        javascriptreact = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        javascript = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        svelte = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        css = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
        json = {
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin", "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
                    stdin = true,
                }
            end
        },
    }
}

vimp.nnoremap('<leader>F', ':FormatWrite<cr>')
