local vimp = require('vimp')

require('fzf-lua').setup({
    winopts = {
      fullscreen = true,
      win_border = false
    },
    fzf_opts = {
      -- options are sent as `<left>=<right>`
      -- set to `false` to remove a flag
      -- set to '' for a non-value flag
      -- for raw args use `fzf_args` instead
      ['--ansi']        = '',
      ['--prompt']      = ' >',
      ['--info']        = 'inline',
      ['--height']      = '100%',
      ['--layout']      = 'reverse',
    },
})

vimp.nnoremap('<leader>ff', ':FzfLua files<cr>')
vimp.nnoremap('<leader>g', ':FzfLua git_files<cr>')
vimp.nnoremap('<leader>fg', ':FzfLua grep<cr>')
vimp.nnoremap('<leader>b', ':FzfLua buffers<cr>')
vimp.nnoremap('<leader>fo', ':FzfLua oldfiles<cr>')
vimp.nnoremap('<leader>fs', ':FzfLua grep_cword<cr>')
