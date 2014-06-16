if exists('g:vundle_installing_plugins')
  Plugin 'mutewinter/GIFL'
  finish
endif

let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning = 1
