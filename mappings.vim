" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=','
let maplocalleader = ' '

" -----------------------
" Unmapped While Learning
" -----------------------

" No-op ^ and $ while learning H and L
noremap ^ <nop>
noremap $ <nop>
nnoremap <leader>sc <nop>

" ---------------
" Regular Mappings
" ---------------

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Quit with one key
nnoremap <M-x> :qa<cr>

" Yank entire buffer with gy
nnoremap gy :0,$ y<cr>

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go m`o<Esc>``
nnoremap gO m`O<Esc>``

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Clear search
noremap <silent><leader>/ :nohls<CR>

" copy current file name (relative/absolute) to system clipboard
" from http://stackoverflow.com/a/17096082/22423
if has('mac') || has('gui_macvim') || has('gui_mac')
  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" ---------------
" Typo Fixes
" ---------------

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Bindings that are only for Neovim in terminal
if !exists('g:vscode')
  " remap U to <C-r> for easier redo
  " from http://vimbits.com/bits/356
  nnoremap U <C-r>

  " Quickly switch to last buffer
  nnoremap <leader>, :e#<CR>

  " -------
  " Windows
  " -------

  " Move windows directionally
  nnoremap <silent> <M-h> :wincmd h<CR>
  nnoremap <silent> <M-j> :wincmd j<CR>
  nnoremap <silent> <M-k> :wincmd k<CR>
  nnoremap <silent> <M-l> :wincmd l<CR>

  " Swap Windows
  nnoremap <silent> gx :wincmd x<CR>


  " Split window vertically or horizontally *and* switch to the new split!
  nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
  nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

  " Close the current window
  nnoremap <silent> <M-w> :close<CR>

  " ------------
  " Tab Movement
  " ------------
  nnoremap <silent> <M-1> :tabnext 1<CR>
  nnoremap <silent> <M-2> :tabnext 2<CR>
  nnoremap <silent> <M-3> :tabnext 3<CR>
  nnoremap <silent> <M-4> :tabnext 4<CR>
  nnoremap <silent> <M-5> :tabnext 5<CR>

  " Plug mappings here because they don't work in plug.vim
  nnoremap <leader>pi :PlugInstall<CR>
  nnoremap <leader>pu :PlugUpdate<CR>
  nnoremap <leader>pc :PlugClean<CR>

  " Insert date
  iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

  " Insert ellipsis
  iabbrev '..ell' …
endif
