if exists('g:plug_installing_plugins')
  Plug 'mutewinter/nvim-colorizer.lua'
  finish
endif

lua <<EOF
require 'colorizer'.setup({
  user_default_options = {
    tailwind = "normal", -- Non-LSP version
    css = true, -- Enable all CSS features
  }
})
EOF
