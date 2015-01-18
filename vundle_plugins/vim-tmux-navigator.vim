if exists('g:vundle_installing_plugins')
  Plugin 'christoomey/vim-tmux-navigator'
  finish
endif

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
" I don't map M-k because it wraps around to the bottom in Tmux and I never
" use a split above a vim pane.
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
