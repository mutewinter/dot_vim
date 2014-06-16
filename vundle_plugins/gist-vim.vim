if exists('g:vundle_installing_plugins')
  Plugin 'mattn/gist-vim'
  finish
endif

if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
