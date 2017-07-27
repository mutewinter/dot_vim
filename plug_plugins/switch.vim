if exists('g:plug_installing_plugins')
  Plug 'AndrewRadev/switch.vim'
  finish
endif

let g:switch_mapping = '-'

augroup SwitchJavaScript
  autocmd FileType javascript let b:switch_custom_definitions =
        \  [
        \    {
        \     '="\(.\{-}\)"':                    '={`\1`}',
        \     '={`\(.\{-}\)`}':                  '="\1"',
        \    },
        \    {
        \     '\%(=\)\@!''\(.\{-}\)''':          '"\1"',
        \     '\%(=\)\@!"\(.\{-}\)"':            '`\1`',
        \     '\%(=\)\@!`\%(\$\)\@!\(.\{-}\)`':  '`${\1}`',
        \     '\%(=\)\@!`${\(.\{-}\)}`':         '''\1''',
        \    }
        \  ]
augroup END
