if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'folke/trouble.nvim'
  finish
endif

lua << EOF
  require('trouble').setup()
EOF
