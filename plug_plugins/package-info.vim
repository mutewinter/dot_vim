if exists('g:plug_installing_plugins')
  Plug 'vuki656/package-info.nvim'
  Plug 'MunifTanjim/nui.nvim'
  finish
endif

lua require('package-info').setup()
