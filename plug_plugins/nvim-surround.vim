if exists('g:plug_installing_plugins')
  Plug 'kylechui/nvim-surround'
  finish
endif

lua << EOF
require("nvim-surround").setup({
  -- Configuration here, or leave empty to use defaults
  surrounds = {
    -- JavaScript string interpolation
    ["$"] = {
      add = function()
      return { { "${" }, { "}" } }
      end,
    }
  }
})
EOF
