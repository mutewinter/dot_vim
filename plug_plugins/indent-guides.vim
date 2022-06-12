if exists('g:plug_installing_plugins')
  Plug 'glepnir/indent-guides.nvim'
  finish
endif

lua << EOF
  require('indent_guides').setup({
    indent_guide_size = 2,
    exclude_filetypes = {'help','startify','NvimTree'},
    even_colors = { fg ='#cccccc', bg='#141414' },
    odd_colors = {fg='#cccccc', bg='#1d1d1d' }
  })
EOF
