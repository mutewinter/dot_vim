function! s:stylus_iskeyword()
  return &iskeyword . ",-,$"
endfunction

function! s:set_stylus_iskeyword(stylus_iskeyword)
  execute "setlocal iskeyword=" . a:stylus_iskeyword
endfunction

if exists("g:stylus_loaded_iskeyword")
  finish
endif

let g:stylus_loaded_iskeyword = 1
autocmd FileType stylus call s:set_stylus_iskeyword(s:stylus_iskeyword())
