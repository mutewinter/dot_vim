if exists('g:vundle_installing_plugins')
  Plugin 'scrooloose/syntastic'
  finish
endif

let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_html_checkers = ['handlebars']
let g:syntastic_javascript_checkers = ['jshint']

" Hat tip http://git.io/SPIBfg
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_full_redraws = 1

function! SetJavaScriptCheckers()
  if findfile('.eslintrc', '.;') != ''
    " Use eslint for projects w/ eslintrc
    let b:syntastic_checkers = ['eslint']
  elseif finddir('ProjectSettings', '.;') != ''
    " Use nothing for Unity projects.
    let b:syntastic_checkers = ['unityscript']
  else
    " Default to jshint
    let b:syntastic_checkers = ['jshint']
  endif
endfunction

autocmd FileType javascript call SetJavaScriptCheckers()
