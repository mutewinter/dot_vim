if exists('g:plug_installing_plugins')
  Plug 'itchyny/lightline.vim'
  finish
endif

function! LightlineModified()
  return &modifiable && &modified ? '🔸' : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! CocStatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, '❌ ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, '⚠️ ' . info['warning'])
  endif
  return join(msgs, ' ')
endfunction

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component': {
        \ 'filename': '%{expand("%:p:h:t")}/%t',
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'cocstatus': 'CocStatusDiagnostic',
      \   'scrollbar': 'ScrollStatus',
      \   'modified': 'LightlineModified',
      \ },
      \ 'component_type': {
      \   'modified': 'warning',
      \   'cocstatus': 'warning',
      \ },
      \ }

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'filename', 'modified' ],
      \           ],
      \ 'right': [ ['cocstatus'],
      \            [ 'scrollbar' ],
      \            [ 'filetype' ] ] }

let g:lightline.inactive = {
      \ 'left': [ [ 'filename' ], ['modified'] ],
      \ 'right': [ ['cocstatus'],
      \            [ 'percent' ] ] }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
