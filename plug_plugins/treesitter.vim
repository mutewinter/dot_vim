if exists('g:plug_installing_plugins')
  " Pinned to v0.9.2 because my color scheme doesn't support new group names
  " See https://github.com/nvim-treesitter/nvim-treesitter/issues/2293#issuecomment-1900679583
  " And remove once we do do updates https://github.com/nvim-treesitter/nvim-treesitter/commit/1ae9b0e4558fe7868f8cda2db65239cfb14836d0
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'tag': 'v0.9.2'}
  Plug 'nvim-treesitter/playground' " For debugging tree-sitter
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  Plug 'hiphish/rainbow-delimiters.nvim'
  finish
endif

lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "phpdoc" },
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
