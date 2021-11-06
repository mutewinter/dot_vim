if exists('g:plug_installing_plugins')
  Plug 'numToStr/Comment.nvim'
  finish
endif

" Setup Comment.vim to use nvim-ts-context-commentstring
lua <<EOF
require('Comment').setup {
  pre_hook = function(ctx)
    local U = require 'Comment.utils'
    local type = ctx.ctype == U.ctype.line and '__default' or '__multiline'
    return require('ts_context_commentstring.internal').calculate_commentstring {
      key = type,
    }
  end,
}
EOF
