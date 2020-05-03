if exists('g:plug_installing_plugins')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  finish
endif

let g:coc_global_extensions = [
      \'coc-emmet', 'coc-pairs', 'coc-ultisnips', 'coc-json', 'coc-tabnine',
      \'coc-tsserver', 'coc-highlight', 'coc-css', 'coc-git', 'coc-tailwindcss',
      \'coc-eslint'
      \]

" Use K to show documentation in preview window
nnoremap <silent>gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <tab> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm. Note that
" arrow keys navigate completions (but I have a fancy keyboard).
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Highlight symbol under cursor on CursorHold
" TODO Broken right now. Try this again in the future to replace
" vim-illuminate.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Pick a new color
nmap <leader>cpp :call CocAction('pickColor')<CR>
" Change color presentation
nmap <leader>c22 :call CocAction('colorPresentation')<CR>

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Autofix problem of current line
nmap <leader>ff  <Plug>(coc-fix-current)
" Search workspace symbols
nnoremap <leader>al  :<C-u>CocList actions<cr>

" Search workspace symbols
nnoremap <silent> <leader>ss  :<C-u>CocList -I symbols<cr>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Map keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gtd <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:organize_imports()
  call CocAction('runCommand', 'tsserver.organizeImports')
  normal gF
endfunction

nmap <silent> <leader>if :call <SID>organize_imports()<CR>

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
