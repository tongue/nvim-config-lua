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
    svelte = {
        {cmd = {"prettier -w"}}
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


vimp.nnoremap('<leader>F', ':FormatWrite<cr>')
