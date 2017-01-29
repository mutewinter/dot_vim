# The Vim Configuration of Champions

[Jump to Plugin List](#plugin-list)

[![Screenshot][ss]][ss]

[ss]: https://github.com/mutewinter/dot_vim/raw/master/screenshots/screenshot_1.png

## Plugins and Configuration in their Own File

Each plugin is included and managed in its [own file](/plug_plugins).

## Installation

1. `git clone http://github.com/mutewinter/dot_vim.git ~/.config/nvim`.
1. `cd ~/.config/nvim`.

Now you have a choice. The automated script or the manual process.

1. Run `scripts/setup`.

**or**

1. `rake vim:link` to make the `.vimrc` and `.nvimrc` symbolic links.
3. `vim +PlugInstall +qall`

Enjoy enhanced productivity, increased levitation, reduced watermelon-related
accidents, and startling sex appeal.

## Vim Requirements

* I'm using [NeoVim](https://github.com/neovim/neovim)
  [via Homebrew](https://github.com/neovim/neovim/wiki/Installing-Neovim) on OS X.

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed.
* [Neomake](https://github.com/neomake/neomake) Uses various linding and style
  checking tools that are sepately installed.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Source Code Nerd Font Complete](https://git.io/vPBU6) The custom font I'm using
  for vim-airline and vim-devicons.
* [underscore-cli](https://github.com/ddopson/underscore-cli) for sweet JSON
  formatting.

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer, if needed.

And many more. See [`mappings.vim`](mappings.vim) and
[`plug_plugins`](plug_plugins) for more.

## Installing Custom Plugins

Create a new `.vim` file with the same name as the plugin you'd like to install
in [`plug_plugins/custom`](plug_plugins/custom). Then add the installation
block. For example:

`plug_plugins/custom/vim-move.vim`

```viml
if exists('g:plug_installing_plugins')
  Plug 'matze/vim-move.vim'
  finish
endif

let g:move_key_modifier = 'C'
```

This example installs [`vim-move`](https://github.com/matze/vim-move).

## Plugin List

| Stars&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Plugin** | **Description** |
| :------- | :--------- | :-------------- |
| ★ 12,855 |[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) [:page_facing_up:](plug_plugins/YouCompleteMe.vim)|A code-completion engine for Vim |
| ★ 8,652 |[vim-airline](https://github.com/vim-airline/vim-airline) [:page_facing_up:](plug_plugins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| ★ 7,806 |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_plugins/vim-fugitive.vim)|fugitive.vim: a Git wrapper so awesome, it should be illegal |
| ★ 7,468 |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](plug_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| ★ 7,219 |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_plugins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder written in Go |
| ★ 4,298 |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| ★ 3,550 |[emmet-vim](https://github.com/mattn/emmet-vim) [:page_facing_up:](plug_plugins/emmet-vim.vim)|emmet for vim: http://emmet.io/ |
| ★ 2,911 |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_plugins/vim-easymotion.vim)|Vim motions on speed! |
| ★ 2,899 |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](plug_plugins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| ★ 2,195 |[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) [:page_facing_up:](plug_plugins/ctrlp.vim)|Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. |
| ★ 2,071 |[vim-javascript](https://github.com/pangloss/vim-javascript)|Vastly improved Javascript indentation and syntax support in Vim. |
| ★ 2,030 |[supertab](https://github.com/ervandew/supertab)|Perform all your vim insert mode completions with Tab |
| ★ 1,955 |[vim-markdown](https://github.com/plasticboy/vim-markdown)|Markdown Vim Mode |
| ★ 1,769 |[ack.vim](https://github.com/mileszs/ack.vim) [:page_facing_up:](plug_plugins/ack.vim)|Vim plugin for the Perl module / CLI script 'ack' |
| ★ 1,674 |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](plug_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| ★ 1,591 |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_plugins/vim-startify.vim)|:link: The fancy start screen for Vim. |
| ★ 1,521 |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](plug_plugins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| ★ 1,466 |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](plug_plugins/tabular.vim)|Vim script for text filtering and alignment |
| ★ 1,339 |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: pairs of handy bracket mappings |
| ★ 1,282 |[gist-vim](https://github.com/mattn/gist-vim) [:page_facing_up:](plug_plugins/gist-vim.vim)|vimscript for gist |
| ★ 1,264 |[vimux](https://github.com/benmills/vimux) [:page_facing_up:](plug_plugins/vimux.vim)|vim plugin to interact with tmux |
| ★ 1,250 |[neomake](https://github.com/benekastah/neomake) [:page_facing_up:](plug_plugins/neomake.vim)|Asynchronous linting and make framework for Neovim/Vim |
| ★ 1,207 |[vim-devicons](https://github.com/ryanoasis/vim-devicons) [:page_facing_up:](plug_plugins/vim-devicons.vim)|:symbols: Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more |
| ★ 1,188 |[delimitMate](https://github.com/Raimondi/delimitMate) [:page_facing_up:](plug_plugins/delimitMate.vim)|Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc. |
| ★ 1,173 |[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) [:page_facing_up:](plug_plugins/editorconfig-vim.vim)|EditorConfig plugin for Vim |
| ★ 1,057 |[vim-polyglot](https://github.com/sheerun/vim-polyglot) [:page_facing_up:](plug_plugins/vim-polyglot.vim)|A solid language pack for Vim. |
| ★ 1,014 |[vim-signify](https://github.com/mhinz/vim-signify) [:page_facing_up:](plug_plugins/vim-signify.vim)|:heavy_plus_sign: Show a diff using Vim its sign column. |
| ★ 1,009 |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim) [:page_facing_up:](plug_plugins/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| ★ 926 |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ★ 918 |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| ★ 820 |[targets.vim](https://github.com/wellle/targets.vim)|Vim plugin that provides additional text objects |
| ★ 791 |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_plugins/fzf.vim)|fzf :heart: vim |
| ★ 728 |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](plug_plugins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| ★ 620 |[undotree](https://github.com/mbbill/undotree)|The ultimate undo history visualizer for VIM |
| ★ 612 |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](plug_plugins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| ★ 591 |[incsearch.vim](https://github.com/haya14busa/incsearch.vim) [:page_facing_up:](plug_plugins/incsearch.vim)|:flashlight: Improved incremental searching for Vim |
| ★ 586 |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: helpers for UNIX |
| ★ 586 |[vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify) [:page_facing_up:](plug_plugins/vim-jsbeautify.vim)|vim plugin which formated javascript files by js-beautify |
| ★ 582 |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| ★ 571 |[vim-endwise](https://github.com/tpope/vim-endwise)|endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc |
| ★ 571 |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| ★ 556 |[vim-node](https://github.com/moll/vim-node)|Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. |
| ★ 383 |[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)|A collection of themes for vim-airline |
| ★ 366 |[webapi-vim](https://github.com/mattn/webapi-vim)|vim interface to Web API |
| ★ 345 |[csv.vim](https://github.com/chrisbra/csv.vim)|A Filetype plugin for csv files |
| ★ 340 |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](plug_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| ★ 273 |[vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)|A custom text object for selecting ruby blocks. |
| ★ 259 |[switch.vim](https://github.com/AndrewRadev/switch.vim) [:page_facing_up:](plug_plugins/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| ★ 234 |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| ★ 231 |[vim-hardtime](https://github.com/takac/vim-hardtime) [:page_facing_up:](plug_plugins/vim-hardtime.vim)|Plugin to help you stop repeating the basic movement keys |
| ★ 228 |[vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)|Toggles between relative and absolute line numbers automatically |
| ★ 190 |[vim-rake](https://github.com/tpope/vim-rake)|rake.vim: it's like rails.vim without the rails |
| ★ 176 |[vim-turbux](https://github.com/jgdavey/vim-turbux) [:page_facing_up:](plug_plugins/vim-turbux.vim)|Turbo Ruby testing with tmux |
| ★ 161 |[open-browser.vim](https://github.com/tyru/open-browser.vim) [:page_facing_up:](plug_plugins/open-browser.vim)|Open URI with your favorite browser from your most favorite editor |
| ★ 112 |[matchit.zip](https://github.com/vim-scripts/matchit.zip)|extended % matching for HTML, LaTeX, and many other languages |
| ★ 108 |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| ★ 100 |[colorv.vim](https://github.com/Rykka/colorv.vim) [:page_facing_up:](plug_plugins/colorv.vim)|A powerful color tool in vim |
| ★ 99 |[vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) [:page_facing_up:](plug_plugins/vim-nerdtree-syntax-highlight.vim)|Extra syntax and highlight for nerdtree files |
| ★ 95 |[vim-anzu](https://github.com/osyo-manga/vim-anzu) [:page_facing_up:](plug_plugins/vim-anzu.vim)|Vim search status. |
| ★ 82 |[vim-marked](https://github.com/itspriddle/vim-marked)|Open the current Markdown buffer in Marked.app |
| ★ 81 |[github-complete.vim](https://github.com/rhysd/github-complete.vim)|Vim input completion for GitHub |
| ★ 78 |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| ★ 65 |[L9](https://github.com/vim-scripts/L9)|Vim-script library |
| ★ 63 |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_plugins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| ★ 63 |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](plug_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| ★ 59 |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](plug_plugins/portkey.vim)|Navigate files at the speed of Vim. |
| ★ 50 |[textile.vim](https://github.com/timcharper/textile.vim)|Textile for VIM |
| ★ 49 |[Join](https://github.com/sk1418/Join)|a better (hopefully) :Join command in vim |
| ★ 48 |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| ★ 43 |[incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim) [:page_facing_up:](plug_plugins/incsearch-fuzzy.vim)| |
| ★ 42 |[vim-side-search](https://github.com/ddrscott/vim-side-search) [:page_facing_up:](plug_plugins/vim-side-search.vim)|Search context in Vim in a sidebar using `ag` output |
| ★ 39 |[vim-swap](https://github.com/machakann/vim-swap)|Reorder delimited items. |
| ★ 27 |[zoomwintab.vim](https://github.com/troydm/zoomwintab.vim) [:page_facing_up:](plug_plugins/zoomwintab.vim)|zoomwintab vim plugin |
| ★ 27 |[neomake-local-eslint.vim](https://github.com/benjie/neomake-local-eslint.vim)|Prefer local eslint over global with neomake |
| ★ 24 |[vim-reveal-in-finder](https://github.com/henrik/vim-reveal-in-finder)|Reveal the current file in the OS X Finder. |
| ★ 22 |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| ★ 22 |[incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim) [:page_facing_up:](plug_plugins/incsearch-easymotion.vim)| |
| ★ 12 |[vim-voogle](https://github.com/papanikge/vim-voogle) [:page_facing_up:](plug_plugins/vim-voogle.vim)|google for the word under the cursor to a browser because 2013 |
| ★ 9 |[indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim) [:page_facing_up:](plug_plugins/indenthtml.vim)|alternative html indent script |
| ★ 3 |[GIFL](https://github.com/mutewinter/GIFL) [:page_facing_up:](plug_plugins/GIFL.vim)|Add "wrap terms in google I'm feeling lucky url" à la Textmate |
| ★ 2 |[taskpaper.vim](https://github.com/mutewinter/taskpaper.vim)|This package contains a syntax file and a file-type plugin for the simple format used by the TaskPaper application. |
| ★ 2 |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| ★ 1 |[vim-tmux](https://github.com/mutewinter/vim-tmux)|http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?view=log |
| ★ 1 |[vim-textobj-reactprop](https://github.com/justinj/vim-textobj-reactprop)|A vim text object for a React prop |
| ★ 1 |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |
| ★ 0 |[splitjoin.vim](https://github.com/mutewinter/splitjoin.vim) [:page_facing_up:](plug_plugins/splitjoin.vim)|A vim plugin that simplifies the transition between multiline and single-line code |

_That's 86 plugins, holy crap._

_Generated by `rake update_readme` on 2017/01/29._

