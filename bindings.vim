" ----------------------------------------
" Bindings
" ----------------------------------------
" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","

" Fixes common typos
command! W w
command! Q q
noremap <F1> <Esc>
inoremap <F1> <Esc>
" Crazy flying pinky
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup binding because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Easier Scrolling (think j/k with left hand)
" All variations are mapped for now until I get used to one
" C/M/D + d (page up)
" C/M/D + f (page down)
nnoremap <C-d> <C-b>
if has("gui_macvim")
  nnoremap <D-f> <C-f>
  nnoremap <D-d> <C-b>
else
  nnoremap <M-f> <C-f>
  nnoremap <M-d> <C-b>
endif

" Overrides neocomplcache with regular keyword completion
inoremap <expr><C-k>  "\<C-x><C-n>"

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Yank entire buffer with gy
nnoremap gy :%y+<cr>

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Clear search
noremap <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" ---------------
" Leader Commands
" ---------------

" Toggle spelling mode with ,s
nnoremap <silent> <leader>s :set spell!<CR>
" Edit vimrc with ,v
nnoremap <silent> <leader>v :e ~/.vim/vimrc<CR>
" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Window Movement
" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>
" Upper left window
nnoremap <silent> g1 :wincmd t<CR>
" Upper right window
nnoremap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
nnoremap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
nnoremap <silent> g4 :wincmd b<CR>

" Top Middle
nnoremap <silent> gt g2<Bar>:wincmd h<CR>
" Bottom Middle
nnoremap <silent> gb g3<Bar>:wincmd l<CR>

" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" Close the current window
nnoremap <silent> <leader>sc :close<CR>

" -----------------------
" Escape / Write Bindings
" -----------------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

" -------------------------------------
" The following commands are from Janus
" http://git.io/_GhulA
" -------------------------------------

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/g\|:nohls<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Wrap the current line
nnoremap <leader>fl Vgq

" Format a json file with Python's built in json.tool.
" from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nnoremap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" Restart Pow.cx for the Current App
command! PowRestart :!touch tmp/restart.txt
