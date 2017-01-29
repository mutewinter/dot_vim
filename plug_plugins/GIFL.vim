if exists('g:plug_installing_plugins')
  Plug 'mutewinter/GIFL'
  finish
endif

let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning = 1
