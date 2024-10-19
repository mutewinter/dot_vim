if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'cxwx/specs.nvim'
  finish
endif

lua << EOF
require('specs').setup({
  show_jumps  = true,
  min_jump = 30,
  popup = {
    delay_ms = 0, -- delay before popup displays
    inc_ms = 10, -- time increments used for fade/resize effects
    blend = 80, -- starting blend, between 0-100 (fully transparent), see :h winblend
    width = 30,
    winhl = "Specs",
    fader = require('specs').pulse_fader,
    resizer = require('specs').shrink_resizer
    },
  ignore_filetypes = {},
  ignore_buftypes = { nofile = true },
})
EOF
