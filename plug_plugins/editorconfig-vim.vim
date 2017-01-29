if exists('g:plug_installing_plugins')
  Plug 'editorconfig/editorconfig-vim'
  finish
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" Keep Vim from automatically wrapping lines
let g:EditorConfig_preserve_formatoptions = 1
let g:EditorConfig_core_mode = 'external_command'
