if exists('g:plug_installing_plugins')
  Plug 'mhinz/vim-grepper'
  finish
endif

nnoremap <leader>rg :Grepper -tool rg<cr>

let g:grepper = {
    \ 'tools': ['rg'],
    \ 'rg': {
    \   'grepprg':    'rg --vimgrep --smart-case',
    \ }}
