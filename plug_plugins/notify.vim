if exists('g:plug_installing_plugins')
  Plug 'rcarriga/nvim-notify'
  finish
endif

lua << EOF
  vim.notify = require("notify")
EOF
