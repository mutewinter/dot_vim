local lush = require('lush')
local hsl = lush.hsl

local jellybeans = require('lush_theme.jellybeans-nvim')

local nice_red = "#ff5656" -- A nicer red, also from https://git.io/Jfs2T
local mantis = "#70b950" -- From Jellybeans
local koromiko = "#ffb964" -- From Jellybeans

local spec = lush.extends({jellybeans}).with(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Darker background for entire window
    Normal { fg = "#e8e8d3", bg = "#090909", },

    -- Better colors for popup menus
    Pmenu { bg = "#202020", fg = "#D6D6D6" },
    CocMenuSel { bg = "#D6D6D6", fg = "#2B2B2B" },

    -- Better colors for JSX tag attributes
    sym("@tag.attribute.tsx") { fg = koromiko },

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
