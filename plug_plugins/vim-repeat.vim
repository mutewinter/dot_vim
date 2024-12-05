" Disabled in VS Code because it remaps `u`, which I need remap
" Also not sure how much I'm relying on this in VS Code anyway.
if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'tpope/vim-repeat'
  finish
endif
