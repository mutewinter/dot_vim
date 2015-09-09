if exists('g:vundle_installing_plugins')
  Plugin 'benekastah/neomake'
  finish
endif

autocmd! BufWritePost * Neomake

let g:neomake_open_list = 1
let g:neomake_list_height = 5

function! SetJavaScriptCheckers()
  let checkers = []

  if findfile('.eslintrc', '.;') != ''
    call add(checkers, 'eslint')
  endif

  if findfile('.jshint', '.;') != ''
    call add(checkers, 'jshint')
  endif

  if findfile('.jscsrc', '.;') != ''
    call add(checkers, 'jscs')
  endif

  if finddir('ProjectSettings', '.;') != ''
    call add(checkers, 'unityscript')
  endif

  echo 'set checkers'
  echo checkers
  let g:neomake_javascript_enabled_makers = checkers
endfunction

autocmd FileType javascript call SetJavaScriptCheckers()
