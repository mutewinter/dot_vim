if exists('g:plug_installing_plugins')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  finish
endif

let g:coc_global_extensions = [
      \'coc-emmet', 'coc-pairs', 'coc-snippets', 'coc-json', 'coc-tsserver',
      \'coc-highlight', 'coc-css', 'coc-git', 'coc-tailwindcss', 'coc-eslint',
      \'coc-vimlsp', 'coc-html', 'coc-db', 'coc-yaml', 'coc-prettier',
      \'coc-fzf-preview',
      \]

" I have to restart Coc sometimes because outdated error stick around.
nnoremap <leader>cr :CocRestart<cr>

" Show documentation in preview window
nnoremap <silent>gD :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use <tab> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm. Note that
" arrow keys navigate completions (but I have a fancy keyboard).
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Pick a new color
nmap <leader>CP :call CocAction('pickColor')<CR>
" Change color presentation
nmap <leader>CX :call CocAction('colorPresentation')<CR>

" Navigate diagnostic
nmap <silent> gp <Plug>(coc-diagnostic-next)
nmap <silent> gn <Plug>(coc-diagnostic-prev)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>aa  <Plug>(coc-codeaction-line)
" Autofix problem of current line
nmap <leader>ac  <Plug>(coc-fix-current)

" Map keys for go-tos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
nmap <leader>gp <Plug>(coc-git-prevchunk)
