if exists('g:plug_installing_plugins')
  Plug 'hoob3rt/lualine.nvim'
  finish
endif

lua << EOF
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'jellybeans'
  },
  sections = {
    lualine_b = {'diff'},
    lualine_c = {{ 'filename', path = 1, file_status = true }},
    lualine_x = {
      { 'diagnostics', sources = { 'coc' } },
    },
    lualine_y = { { 'filetype', coloreed = true } },
    lualine_z = {}
  }
})
EOF
