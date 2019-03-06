if exists('g:plug_installing_plugins')
  Plug 'w0rp/ale'
  finish
endif

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
" Otherwise huge files might get linted and freeze.
let g:ale_lint_on_enter = 0


