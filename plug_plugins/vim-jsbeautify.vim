if exists('g:plug_installing_plugins')
  Plug 'maksimr/vim-jsbeautify'
  finish
endif

nnoremap <leader>bj :call JsBeautify()<cr>
nnoremap <leader>bo :call JsonBeautify()<cr>
nnoremap <leader>bh :call HtmlBeautify()<cr>
nnoremap <leader>bx :call JsxBeautify()<cr>
nnoremap <leader>bc :call CSSBeautify()<cr>

" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify
