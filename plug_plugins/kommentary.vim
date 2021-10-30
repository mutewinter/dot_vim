if exists('g:plug_installing_plugins')
  Plug 'b3nj5m1n/kommentary'
  finish
endif

lua require('kommentary.config').use_extended_mappings()
