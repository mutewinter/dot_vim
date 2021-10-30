if exists('g:plug_installing_plugins')
  Plug 'steelsojka/pears.nvim'
  finish
endif

lua require "pears".setup()
