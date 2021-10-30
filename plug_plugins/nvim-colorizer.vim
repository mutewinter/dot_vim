if exists('g:plug_installing_plugins')
  Plug 'norcalli/nvim-colorizer.lua'
  finish
endif

lua require'colorizer'.setup()
