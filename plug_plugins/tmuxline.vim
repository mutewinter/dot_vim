if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  " Plug 'edkolev/tmuxline.vim'
  finish
endif

let g:tmuxline_theme = 'jellybeans'
