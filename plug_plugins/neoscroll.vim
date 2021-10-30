if exists('g:plug_installing_plugins')
  Plug 'karb94/neoscroll.nvim'
  finish
endif


lua << EOF
  require('neoscroll').setup()
  local t = {}
  t['<up>'] = {'scroll', {'-vim.wo.scroll', 'true', '200'}}
  t['<down>'] = {'scroll', { 'vim.wo.scroll', 'true', '200'}}
  require('neoscroll.config').set_mappings(t)
EOF
