require('lualine').setup({
  options = {
    theme = 'github',
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    },
    lualine_x = {
      {
        'diff',
      },
      {
        'diagnostics',
        sources = { 'nvim_lsp' },
      }
    },
    lualine_y = {
      {
        'fileformat'
      },
      {
        'encoding'
      },
      {
        'filetype',
        colored = true -- displays filetype icon in color if set to `true`
      },
    },
    lualine_z = {
      {
        'location',
      },
    }
  }
})
