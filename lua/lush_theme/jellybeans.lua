local lush = require('lush')
local hsl = lush.hsl

local jellybeans = require('lush_theme.jellybeans-nvim')

local nice_red = "#ff5656" -- A nicer red, also from https://git.io/Jfs2T

local spec = lush.extends({jellybeans}).with(function()
  return {
    -- Darker background for entire window
    Normal { fg = "#e8e8d3", bg = "#090909", },

    -- Better colors for popup menus
    Pmenu { bg = "#202020", fg = "#D6D6D6" },
    PmenuSel { bg = "#D6D6D6", fg = "#2B2B2B" },

    CocErrorSign { fg = nice_red },

    -- Treesitter
    TSTagAttribute { fg = "#ffb964" },

    -- Fixes issue with template strings
    TSVariable { fg=Normal.fg },

    -- Git Signs
    GitSignsAdd { fg = "#70b950" },
    GitSignsChange { fg = "#8fbfdc" },
    GitSignsDelete { fg = nice_red },
  }
end)

return spec
