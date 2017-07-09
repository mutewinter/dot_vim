if exists('g:plug_installing_plugins')
  Plug 'sbdchd/neoformat'
  finish
endif

let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin', '--no-semi', '--single-quote', '--trailing-comma all'],
            \ 'stdin': 1,
            \ }

nnoremap <M-CR> :Neoformat<CR>
