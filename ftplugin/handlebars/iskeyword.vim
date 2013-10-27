" Additions for handlebars filetype
" from http://git.io/vXX8fg
function! s:handlebars_iskeyword()
  " ? and ! are used in method name, like `nil?`, `save!`
  " $ used in global variable.
  return &iskeyword . ",-"
endfunction

function! s:set_handlebars_iskeyword(handlebars_iskeyword)
  execute "setlocal iskeyword=" . a:handlebars_iskeyword
endfunction

if exists("g:loaded_iskeyword_handlebars")
  finish
endif

let g:loaded_iskeyword_handlebars = 1
autocmd FileType handlebars call s:set_handlebars_iskeyword(s:handlebars_iskeyword())
