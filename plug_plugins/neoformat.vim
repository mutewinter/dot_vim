if exists('g:plug_installing_plugins')
  Plug 'sbdchd/neoformat'
  finish
endif

nnoremap gF :Neoformat<CR>

let g:neoformat_typescriptreact_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
      \ 'stdin': 1
      \ }
let g:neoformat_enabled_typescriptreact = ['tsfmt', 'prettier']
