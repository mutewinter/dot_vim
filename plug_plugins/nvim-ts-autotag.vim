if exists('g:plug_installing_plugins')
  Plug 'windwp/nvim-ts-autotag'
  finish
endif

lua require('nvim-ts-autotag').setup()
