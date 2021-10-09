vim.api.nvim_exec([[
  augroup Format
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]], true)

require "format".setup {
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    javascript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    javascriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    css = {
        {cmd = {"prettier -w"}}
    },
    html = {
        {cmd = {"prettier -w"}}
    },
    json = {
        {cmd = {"prettier -w"}}
    },
}
