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


" ----------------------------------------
" Bundles
" ----------------------------------------

" GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'Shougo/neocomplcache'
Bundle 'kchmck/vim-coffee-script'
Bundle 'wincent/Command-T'
Bundle 'vim-scripts/hexHighlight.vim'
Bundle 'spiiph/vim-space'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

if has ('win32') || has ('win64') 
  " We want the sweet Windows mode on Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar
  let g:syntastic_jsl_conf='C:\Users\jdm\programs\jsl-0.3.0\jsl.conf'

elseif has ('gui_macvim')
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

set background=dark
colorscheme ir_black_mod

" Automatically reload changes if detected
set autoread

set wildmenu "Turn on WiLd menu
set hidden "Change buffer - without saving

set history=1000

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)


" ---------------
" Formatting
" ---------------
set ts=2 
set bs=2 " Delete everything with backspace
set shiftwidth=2  " Tabs under smart indent
set incsearch
set hlsearch
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2     
set cursorline


" ---------------
" Searching
" ---------------
set smartcase

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set mat=2 " How many tenths of a second to blink


" No sound on errors
set visualbell 
set novisualbell  
set noerrorbells  
set t_vb=


" ---------------
" Status Line
" ---------------
set laststatus=2  " Always hide the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction


" Mouse
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

set tabpagemax=15

command! W w
command! Q q


let g:buftabs_only_basename=1
set laststatus=2
let g:buftabs_in_statusline=1

" Remove folds
set foldlevelstart=99

set formatoptions=crql 


" ----------------------------------------
" Bindings
" ----------------------------------------

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

map! <F1> <Esc>
imap <F1> <Esc>

" Fixes common typos
command! W w
command! Q q

" ---------------
" Leader
" ---------------

" Set leader to ,
let mapleader = ","

nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <leader>v :e $MYVIMRC<CR>

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


  " Set jquery syntax
  autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
endif
" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" neocomplcache
" ---------------
let g:neocomplcache_enable_at_startup = 1
let g:rsenseUseOmniFunc = 1 " Fix completion in neocomplcache for ruby
let g:neocomplcache_enable_auto_select = 1

" ---------------
" Lusty Juggler
" ---------------
nnoremap <leader>, :LustyJugglePrevious<CR>

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
nnoremap <silent><C-y> :FuzzyFinderMruFile<CR>
nnoremap <silent><C-u> :FuzzyFinderFile<CR>
nnoremap <silent><C-p> :FuzzyFinderBuffer<CR>

" ---------------
" NERDTree
" ---------------
nmap <silent><C-n> :NERDTree<CR>
nnoremap <leader>n :NERDTree<CR>
let NERDTreeShowBookmarks=1


" ---------------
" Hex Highlight
" ---------------
command! HexHighlight call HexHighlight()
nnoremap <leader>h :HexHighlight<CR>

" ---------------
" Command T
" ---------------
nnoremap <silent><C-t> :CommandT<CR>

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1


" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Opens the first URL found on the lien
" ---------------

" TODO Make this work with Mac

ruby << EOF
  def open_url
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»]))}

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
nnoremap <leader><F1> :call OpenURL()<CR>


