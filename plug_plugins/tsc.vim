if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'dmmulroy/tsc.nvim'
  finish
endif

lua << EOF
  require('tsc').setup({
    use_trouble_qflist = true,
  })
EOF
