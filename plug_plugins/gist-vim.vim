if exists('g:plug_installing_plugins')
  Plug 'mattn/gist-vim'
  finish
endif

if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
