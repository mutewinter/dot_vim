if exists('g:plug_installing_plugins')
  Plug 'w0rp/ale'
  finish
endif

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
" Otherwise huge files might get linted and freeze.
let g:ale_lint_on_enter = 0
