if exists('g:plug_installing_plugins')
  Plug 'karb94/neoscroll.nvim'
  finish
endif


lua << EOF
  neoscroll = require('neoscroll')
  neoscroll.setup()

  local keymap = {
    ["<up>"] = function() neoscroll.scroll(-vim.wo.scroll, { move_cursor=true, duration = 200 }) end;
    ["<down>"] = function() neoscroll.scroll(vim.wo.scroll, {  move_cursor=true, duration = 200 }) end;
  }
  local modes = { 'n', 'v', 'x' }
  for key, func in pairs(keymap) do
    vim.keymap.set(modes, key, func)
  end
EOF
