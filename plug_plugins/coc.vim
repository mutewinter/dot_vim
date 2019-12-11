if exists('g:plug_installing_plugins')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  finish
endif

let g:coc_global_extensions = [
      \'coc-emmet', 'coc-pairs', 'coc-ultisnips', 'coc-json', 'coc-tabnine',
      \'coc-tsserver', 'coc-highlight', 'coc-css', 'coc-git'
      \]

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window
nnoremap <silent>gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Highlight symbol under cursor on CursorHold
" TODO Broken right now. Try this again in the future to replace
" vim-illuminate.
" autocmd CursorHold * silent call CocActionAsync('highlight')

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
