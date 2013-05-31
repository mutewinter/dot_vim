" =============================================================================
" KJ
" =============================================================================

" Set color scheme
" ----------------
set t_Co=256

" Set another leader for default \
" --------------------------------
nmap \ ,

" make escape better
" ------------------
inoremap kj <Esc>
inoremap KJ <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>

" tabbing easy control
" --------------------
nmap <C-Left> :tabp<CR>
nmap <C-Right> :tabn<CR>
nmap <C-j> :tabp<CR>
nmap <C-k> :tabn<CR>
nmap <C-t> :tabnew<CR>

" highlight current line
" ----------------------
autocmd InsertLeave * set cursorline
autocmd InsertEnter * set cursorline

" insert current date and time
" ----------------------------
" If buffer modified, update any '@last' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([30, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}@last        \).*#\1' .
          \ strftime('%a, %d %b  %Y %H:%M:%S %z') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

" fold option
" -----------
setlocal foldmethod=indent
inoremap <leader>f <C-O>za
nnoremap <leader>f za
onoremap <leader>f <C-C>za
vnoremap <leader>f zf


" -----------------------------------------------------------------------------
" Function keys
" -----------------------------------------------------------------------------
"
"F2 = pastetoggle
set pastetoggle=<F2>
"F3 =
"F4 =
"F5 =
"F6 =
"F7 = checking the spell
map <F7> :setlocal spell! spelllang=en_gb spell?<cr>
"F8 =
"F9 = fold 
nmap <F9> <leader>f

" -----------------------------------------------------------------------------
" Plugin reconfiguration
" -----------------------------------------------------------------------------
"
"NERDTree
let g:NERDTreeMinimalUI=0
" vim-less
nnoremap ,le :w <BAR> !lessc % > %:t:r.css<CR><space>

" Compile LessCSS on save
autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:p:r.css
