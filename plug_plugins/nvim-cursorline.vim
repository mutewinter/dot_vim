if exists('g:vscode')
  finish
endif


" Ensure this isn't causing performance issues (it was before)
if exists('g:plug_installing_plugins')
  Plug 'yamatsum/nvim-cursorline'
  finish
endif


lua <<EOF
require('nvim-cursorline').setup {
  cursorline = {
    -- I'm fine with the status line always being visible
    enable = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
EOF
