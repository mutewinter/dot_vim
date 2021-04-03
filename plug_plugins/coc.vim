if exists('g:plug_installing_plugins')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
  finish
endif

" coc-prettier locked to 1.1.20 due to it not using plugins on .21
let g:coc_global_extensions = [
      \'coc-pairs', 'coc-snippets', 'coc-json', 'coc-tsserver',
      \'coc-highlight', 'coc-css', 'coc-git', 'coc-eslint',
      \'coc-vimlsp', 'coc-html', 'coc-db', 'coc-yaml', 'coc-prettier'
      \]

" I have to restart Coc sometimes because outdated error stick around.
nnoremap <leader>cr :CocRestart<cr>

" Show documentation in preview window
nnoremap <silent>gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <cr> or <tab> to confirm completion, `<C-g>u` means break undo chain at
" current position. Coc only does snippet and additional edit on confirm. Note
" that arrow keys navigate completions (but I have a fancy keyboard).
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Pick a new color
nmap <leader>CP :call CocAction('pickColor')<CR>
" Change color presentation
nmap <leader>CX :call CocAction('colorPresentation')<CR>

" Navigate diagnostic
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gN <Plug>(coc-diagnostic-prev)

" Do codeAction of selected region, ex: `<leader>fp` for current paragraph
xmap <leader>b  <Plug>(coc-codeaction-selected)
nmap <leader>b  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>bb  <Plug>(coc-codeaction)
" TODO switch for this when 0.7.9 becomes stable
" nmap <leader>bb  <Plug>(coc-codeaction-line)
" Autofix problem of current line
nmap <leader>bc  <Plug>(coc-fix-current)

" Map keys for go-tos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-diagnostic-info)
nmap <silent> gr <Plug>(coc-references)

" Format current buffer
nmap <silent> gF :call CocAction('format')<CR>

function! s:organize_imports()
  call CocActionAsync()('runCommand', 'tsserver.organizeImports')
endfunction

nmap <silent> <leader>if :call <SID>organize_imports()<CR>

" Map function and class text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

" Use CTRL-S for selections ranges.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" ------------
" coc-snippets
" ------------

imap <C-j> <Plug>(coc-snippets-expand)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" -------
" coc-git
" -------

" navigate chunks of current buffer
nmap <leader>gn <Plug>(coc-git-nextchunk)
nmap <leader>gN <Plug>(coc-git-prevchunk)
