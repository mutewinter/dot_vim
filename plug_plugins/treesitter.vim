if exists('g:plug_installing_plugins')
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  if !exists('g:vscode')
    Plug 'nvim-treesitter/playground' " For debugging tree-sitter
    Plug 'hiphish/rainbow-delimiters.nvim'
    Plug 'nvim-treesitter/nvim-treesitter-context'
  endif

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
