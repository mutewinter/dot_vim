if exists('g:plug_installing_plugins')
  Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
  finish
endif

lua << EOF
require('mini.indentscope').setup({
  draw = {
    animation = require('mini.indentscope').gen_animation.none()
  }
})

require('mini.jump2d').setup({
  mappings = {
    start_jumping = 's',
  },
  allowed_lines = {
    blank = false,
    cursor_before = true, -- Lines before cursor line
    cursor_at = true, -- Cursor line
    cursor_after = true, -- Lines after cursor line
    fold = false, -- Start of fold (not sent to spotter even if `true`)
  },
  allowed_windows = {
    current = true,
    not_current = false
  }
})

require('mini.sessions').setup({
  directory = '~/.local/share/nvim/session', -- for global sessions
  file = '', -- disable local sessions
})
EOF
