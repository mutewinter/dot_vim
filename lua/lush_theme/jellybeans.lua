local lush = require('lush')
local hsl = lush.hsl

local jellybeans = require('lush_theme.jellybeans-nvim')

local spec = lush.extends({jellybeans}).with(function()
  return {
    -- Better colors for popup menus
    Pmenu { bg = "#303030", fg = "#D6D6D6" },
    PmenuSel { bg = "#D6D6D6", fg = "#2B2B2B" },

    CocErrorSign { fg = '#FF5656' }, -- A nicer red, also from https://git.io/Jfs2T

    -- Treesitter
    TSMethod { fg = "#b0d0f0" },
    TSConstructor { fg = "#fad07a" },
    TSType { fg = "#fad07a" },
    TSTagAttribute { fg = "#ffb964" },
    TSConstBuiltin { jellybeans.Constant },
  }
end)

return spec
