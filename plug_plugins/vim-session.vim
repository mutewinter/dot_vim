if exists('g:plug_installing_plugins')
  Plug 'xolox/vim-session'
  finish
endif

let g:session_autosave = 0
let g:session_autoload = 0
nnoremap <leader>os :OpenSession<CR>
