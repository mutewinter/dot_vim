" =======================================
" Who: Jeremy
" What: .vimrc of champions
" Version: 1.0.0beta1
" =======================================

" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'mutewinter/bufpos'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/ZoomWin'
Bundle 'wincent/Command-T'
Bundle 'spiiph/vim-space'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mutewinter/LustyJuggler'
" UI Additions
Bundle 'mutewinter/vim-indent-guides'
Bundle 'dickeytk/status.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mutewinter/ir_black_mod'
Bundle 'godlygeek/csapprox'
" OS Integration
Bundle 'mkitt/browser-refresh.vim'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'vim-scripts/hexHighlight.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
" Language Additions
Bundle 'vim-ruby/vim-ruby'
Bundle 'msanders/cocoa.vim'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'tpope/vim-rails'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'leshill/vim-json'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

if has('win32') || has('win64')
  " Windows

  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar
  " TODO move this into the .vim repo
  let g:syntastic_jsl_conf='C:\Users\jdm\programs\jsl-0.3.0\jsl.conf'

  " Set height and width on Windows
  set lines=60
  set columns=120

elseif has('gui_macvim')
  " MacVim

  set guifont=Menlo\ Regular:h12
  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" ----------------------------------------
" Regular Vim Configuartion (No Plugins Needed)
" ----------------------------------------

" ---------------
" Color
" ---------------
set background=dark
colorscheme ir_black_mod
set cursorline

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set laststatus=2  " Always show the statusline
set cmdheight=2

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=250     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql

" ---------------
" Text Format
" ---------------
set ts=2
set bs=2 " Delete everything with backspace
set shiftwidth=2  " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2

" ---------------
" Searching
" ---------------
set smartcase " Non-case senstive search
set incsearch
set hlsearch

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set mat=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set visualbell
set novisualbell
set noerrorbells
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" ----------------------------------------
" Bindings
" ----------------------------------------

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Fixes common typos
command W w
command Q q
map <F1> <Esc>
imap <F1> <Esc>


" ---------------
" Leader
" ---------------

" Set leader to ,
let mapleader = ","

nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif
" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" neocomplcache
" ---------------
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ---------------
" SuperTab
" ---------------
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" ---------------
" Lusty Juggler
" ---------------
nnoremap <leader>, :LustyJugglePrevious<CR>
let g:LustyJugglerShowKeys = 1 " Show numbers for Lusty Buffers
let g:LustyJugglerSuppressRubyWarning = 1

" ---------------
" Syntasitic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" ---------------
" Minibuffer Explorer
" ---------------
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" ---------------
" FuzzyFinder
" ---------------
let g:fuf_modesDisable = ['mrucmd'] " Enables FufMruFile
nnoremap <silent><C-y> :FufMruFile<CR>
nnoremap <silent><C-u> :FufFileWithCurrentBufferDir<CR>
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fm :FufMruFile<CR>
nnoremap <leader>fb :FufBuffer<CR>

" ---------------
" NERDTree
" ---------------
nmap <silent><C-n> :NERDTree<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node

" ---------------
" Hex Highlight
" ---------------
command HexHighlight call HexHighlight()
nnoremap <leader>h :HexHighlight<CR>

" ---------------
" Command T
" ---------------
nnoremap <silent><C-t> :CommandT<CR>

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3

" ---------------
" Session
" ---------------
let g:session_autosave = 0
let g:session_autoload = 0

" ---------------
" status.vim
" ---------------
let g:statusline_fugitive = 1
let g:statusline_fullpath = 0
" Everything must be after Right Separator for BufStat
let g:statusline_order = [
      \ 'Filename',
      \ 'Encoding',
      \ 'Help',
      \ 'Filetype',
      \ 'Modified',
      \ 'Fugitive',
      \ 'RVM',
      \ 'TabWarning',
      \ 'Syntastic',
      \ 'Paste',
      \ 'ReadOnly',
      \ 'RightSeperator',
      \ 'CurrentHighlight',
      \ 'CursorColumn',
      \ 'LineAndTotal',
      \ 'FilePercent']

" ---------------
" Browser Refresh
" ---------------
map <silent><leader>r :RRB<CR>
map <silent><F5> :RRB<CR>

" ---------------
" SpeedDating
" ---------------
let g:speeddating_no_mappings=1 " Remove default mappings (C-a etc.)
nmap <silent><leader>dm <Plug>SpeedDatingDown
nmap <silent><leader>dp <Plug>SpeedDatingUp
nmap <silent><leader>dn <Plug>SpeedDatingNowUTC

" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" OpenURL
" ---------------
" TODO Make this work with Mac

if has('ruby')
ruby << EOF
  def open_url
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}\
    |[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.]\
    [a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|\
    (\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|\
    (\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".\
    ,<>?«»]))}

    line = VIM::Buffer.current.line

    if url = line[re]
      `start cmd /c chrome #{url}`
      VIM::message("Opened #{url}")
    else
      VIM::message("No URL found in line.")
    end
  end
EOF

" Open a URL
if !exists("*OpenURL")
  function! OpenURL()
    :ruby open_url
  endfunction
endif

command! OpenUrl call OpenURL()
nnoremap <leader>o :call OpenURL()<CR>
endif

" ---------------
" Fix Trailing White Space
" ---------------
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e
