local lush = require('lush')
local hsl = lush.hsl

local jellybeans = require('lush_theme.jellybeans-nvim')

local nice_red = "#ff5656" -- A nicer red, also from https://git.io/Jfs2T
local mantis = "#70b950" -- From Jellybeans
local koromiko = "#ffb964" -- From Jellybeans
local wewak = "#f0a0c0"
local morning_glory = "#8fbfdc"
local bayoux_blue = "#556779"

-- List of Treesitter symbols:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
local spec = lush.extends({jellybeans}).with(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Darker background for entire window
    Normal { fg = "#e8e8d3", bg = "#090909", },

    -- Better colors for popup menus
    Pmenu { bg = "#202020", fg = "#D6D6D6" },
    CocMenuSel { bg = "#D6D6D6", fg = "#2B2B2B" },

    -- Fixes due to Jellybeans being out of date with latest Treesitter symbol
    -- syntax
    sym("@variable")  { Normal },
    sym("@namespace")  { Normal },
    sym("@tag.delimiter") { fg = bayoux_blue },
    sym("@text.emphasis") { gui = "italic" },
    sym("@text.underline") { gui = "underline" },
    sym("@text.strike") { gui="strikethrough" },
    sym("@text.uri") { fg = morning_glory },

    -- My additions
    -- Make JSX attributes easier to distinguish
    sym("@tag.attribute.tsx") { fg = koromiko },
    -- This used to be this color before an update, not sure why it changed
    sym("@variable.builtin")  { fg = "#7bc3a9" },

    -- Better error color
    CocErrorSign { fg = nice_red },

    -- Git Signs
    GitSignsAdd { fg = mantis },
    GitSignsChange { fg = "#8fbfdc" },
    GitSignsDelete { fg = nice_red },

    -- Specs
    Specs { bg = mantis, fg = "#000000" },
  }
end)

return spec
