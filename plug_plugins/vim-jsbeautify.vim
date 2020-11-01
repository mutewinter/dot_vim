if exists('g:plug_installing_plugins')
  Plug 'maksimr/vim-jsbeautify'
  finish
endif

command BeautifyJson :call JsonBeautify()
command BeautifyHtml :call HtmlBeautify()
command BeautifyCss :call CSSBeautify()
