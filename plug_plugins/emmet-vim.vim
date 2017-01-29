if exists('g:plug_installing_plugins')
  Plug 'mattn/emmet-vim'
  finish
endif

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
