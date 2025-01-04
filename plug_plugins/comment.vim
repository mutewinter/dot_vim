if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'numToStr/Comment.nvim'
  finish
endif

" Setup Comment.vim to use nvim-ts-context-commentstring
lua <<EOF
require('Comment').setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
EOF
