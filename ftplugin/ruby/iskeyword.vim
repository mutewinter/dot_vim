" Additions for Ruby filetype
" from http://git.io/vXX8fg
function! s:ruby_iskeyword()
  " ? and ! are used in method name, like `nil?`, `save!`
  " $ used in global variable.
  return &iskeyword . ",?,!,$,="
endfunction

function! s:set_ruby_iskeyword(ruby_iskeyword)
  execute "setlocal iskeyword=" . a:ruby_iskeyword
endfunction

if exists("g:loaded_iskeyword")
  finish
endif

let g:loaded_iskeyword = 1
autocmd FileType ruby call s:set_ruby_iskeyword(s:ruby_iskeyword())
