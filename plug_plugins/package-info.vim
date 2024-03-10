if exists('g:plug_installing_plugins')
  Plug 'vuki656/package-info.nvim'
  Plug 'MunifTanjim/nui.nvim'
  finish
endif

lua << EOF
require('package-info').setup({
  hide_up_to_date = true
})
EOF
