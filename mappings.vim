" ----------------------------------------
" Mappings
" ----------------------------------------

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

" Yank entire buffer with gy
nnoremap gy :0,$ y<cr>

" Select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" ---------------
" Window Movement
" ---------------
nnoremap <silent> gh :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> gj :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> gk :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> <M-k> :wincmd k<CR>
nnoremap <silent> gl :WriteBufferIfNecessary<CR>:wincmd l<CR>
nnoremap <silent> <M-l> :wincmd l<CR>

"   4 Window Splits
"
"   -----------------
"   g1 | g2 | g3 | g4
"   -----------------
nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>
      \:wincmd l<CR>
nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Scroll larger amounts with C-j / C-k
nnoremap gj 15gjzz
nnoremap gk 15gkzz
vnoremap gj 15gjzz
vnoremap gk 15gkzz

" ---------------
" Insert Mode Mappings
" ---------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

" ---------------
" Leader Mappings
" ---------------

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" Toggle spelling mode
nnoremap <silent> <leader>sp :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <m-w> :close<CR>

" Plug mappings here because they don't work in plug.vim
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pc :PlugClean<CR>

" ---------------
" Typo Fixes
" ---------------

noremap <F1> <Esc>
inoremap <F1> <Esc>
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Paste and select pasted
nnoremap <expr> gpp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

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
