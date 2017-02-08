if exists('g:plug_installing_plugins')
  Plug 'mhinz/vim-grepper'
  finish
endif

nnoremap <leader>ag :Grepper -tool ag<cr>

let g:grepper = {
    \ 'tools': ['ag', 'git'],
    \ 'ag': {
    \   'grepprg':    'ag --vimgrep --smart-case',
    \ }}
