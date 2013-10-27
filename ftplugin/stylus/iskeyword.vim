function! s:stylus_iskeyword()
  return &iskeyword . ",-,$"
endfunction

function! s:set_stylus_iskeyword(stylus_iskeyword)
  execute "setlocal iskeyword=" . a:stylus_iskeyword
endfunction

if exists("g:loaded_iskeyword_stylus")
  finish
endif

let g:loaded_iskeyword_stylus = 1
autocmd FileType stylus call s:set_stylus_iskeyword(s:stylus_iskeyword())
