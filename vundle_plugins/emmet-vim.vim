if exists('g:vundle_installing_plugins')
  Plugin 'mattn/emmet-vim'
  finish
endif

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
