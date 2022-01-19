require('lualine').setup({
  options = {
    theme = 'rose-pine',
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
  }
})
