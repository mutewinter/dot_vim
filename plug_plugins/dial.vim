if exists('g:plug_installing_plugins')
  Plug 'monaqa/dial.nvim'
  finish
endif

lua << EOF
local augend = require("dial.augend")
require("dial.config").augends:register_group{
  -- default augends used when no group name is specified
  default = {
    augend.constant.alias.bool,
    augend.semver.alias.semver,
    augend.integer.alias.decimal,
    augend.integer.alias.hex,
    augend.date.alias["%Y/%m/%d"],
    augend.date.alias["%Y-%m-%d"],
    augend.date.alias["%m/%d"],
    augend.date.alias["%H:%M"],
    augend.constant.alias.ja_weekday_full,
    augend.constant.new{
      elements = {"&&", "||"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"eslint-enable", "eslint-disable"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"TRUE", "FALSE"},
      word = true,
      cyclic = true,
    },
  },
}

local dial_manipulate_keep_cursor_position = function(direction)
  local pos = vim.api.nvim_win_get_cursor(0)
  local cmd = direction == "increment" and require('dial.map').inc_normal() or require('dial.map').dec_normal()
  local keys = vim.api.nvim_replace_termcodes(cmd, true, true, true)
  vim.api.nvim_feedkeys(keys, 'm', false)
  vim.schedule(function()
    vim.api.nvim_win_set_cursor(0, pos)
  end)
end

vim.keymap.set("n", "-", function()
    dial_manipulate_keep_cursor_position("increment")
end)
vim.keymap.set("n", "_", function()
    dial_manipulate_keep_cursor_position("decrement")
end)
EOF
