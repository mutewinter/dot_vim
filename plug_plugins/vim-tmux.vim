if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'tmux-plugins/vim-tmux'
  finish
endif

autocmd BufNewFile,BufRead {.,_}tmux*.conf set ft=tmux | compiler tmux
