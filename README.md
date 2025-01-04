# My 13 Year-Old (Neo)Vim Configuration

## About

I've been iterating on this configuration for more than 12 years and 1,000
commits. **It's very unlikely you'd want to use it directly.** Instead, feel
free to learn and take snippets from it.

[Jump to Plugin List](#plugin-list)

[![Screenshot][ss]][ss]

[ss]: https://github.com/mutewinter/dot_vim/raw/main/screenshots/screenshot_1.png

## Plugins and Configuration in their Own File

_This is one of the things I'm most proud of, definitely steal it._

Each plugin is included and managed in its [own file](/plug_plugins).

## Installation

_Be sure you read the About section above._

1. `git clone git@github.com:mutewinter/dot_vim.git ~/.config/nvim`.
1. `cd ~/.config/nvim`.

Now you have a choice. The automated script or the manual process.

1. Run `scripts/setup`.

**or**

1. `rake vim:link` to make the `.vimrc` and `.nvimrc` symbolic links.
1. `vim +PlugInstall +qall`

## Vim Requirements

- I'm using [NeoVim](https://github.com/neovim/neovim)
  [via Homebrew](https://github.com/neovim/neovim/wiki/Installing-Neovim) on macOS.

## Mappings

- Pressing `enter` in normal mode saves the current buffer, if needed.

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
| ![Star count](https://flat.badgen.net/github/stars/neoclide/coc.nvim?label=★&color=black) |[coc.nvim](https://github.com/neoclide/coc.nvim) [:page_facing_up:](plug_plugins/coc.vim)|Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-fugitive?label=★&color=black) |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_plugins/vim-fugitive.vim)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| ![Star count](https://flat.badgen.net/github/stars/nvim-telescope/telescope.nvim?label=★&color=black) |[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) [:page_facing_up:](plug_plugins/telescope.vim)|Find, Filter, Preview, Pick. All lua, all the time. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-surround?label=★&color=black) |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_plugins/vim-surround.vim)|surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease |
| ![Star count](https://flat.badgen.net/github/stars/nvim-treesitter/nvim-treesitter?label=★&color=black) |[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) [:page_facing_up:](plug_plugins/treesitter.vim)|Nvim Treesitter configurations and abstraction layer |
| ![Star count](https://flat.badgen.net/github/stars/github/copilot.vim?label=★&color=black) |[copilot.vim](https://github.com/github/copilot.vim) [:page_facing_up:](plug_plugins/copilot.vim)|Neovim plugin for GitHub Copilot |
| ![Star count](https://flat.badgen.net/github/stars/kyazdani42/nvim-tree.lua?label=★&color=black) |[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) [:page_facing_up:](plug_plugins/nvim-tree.vim)|A file explorer tree for neovim written in lua |
| ![Star count](https://flat.badgen.net/github/stars/hoob3rt/lualine.nvim?label=★&color=black) |[lualine.nvim](https://github.com/hoob3rt/lualine.nvim) [:page_facing_up:](plug_plugins/lualine.vim)|A blazing fast and easy to configure neovim statusline plugin written in pure lua. |
| ![Star count](https://flat.badgen.net/github/stars/mhinz/vim-startify?label=★&color=black) |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_plugins/startify.vim)|:link: The fancy start screen for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/echasnovski/mini.nvim?label=★&color=black) |[mini.nvim](https://github.com/echasnovski/mini.nvim) [:page_facing_up:](plug_plugins/mini.vim)|Library of 40+ independent Lua modules improving overall Neovim (version 0.8 and higher) experience with minimal effort |
| ![Star count](https://flat.badgen.net/github/stars/lewis6991/gitsigns.nvim?label=★&color=black) |[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) [:page_facing_up:](plug_plugins/gitsigns.vim)|Git integration for buffers |
| ![Star count](https://flat.badgen.net/github/stars/sindrets/diffview.nvim?label=★&color=black) |[diffview.nvim](https://github.com/sindrets/diffview.nvim) [:page_facing_up:](plug_plugins/diffview.vim)|Single tabpage interface for easily cycling through diffs for all modified files for any git rev. |
| ![Star count](https://flat.badgen.net/github/stars/TimUntersberger/neogit?label=★&color=black) |[neogit](https://github.com/TimUntersberger/neogit) [:page_facing_up:](plug_plugins/neogit.vim)|An interactive and powerful Git interface for Neovim, inspired by Magit |
| ![Star count](https://flat.badgen.net/github/stars/mbbill/undotree?label=★&color=black) |[undotree](https://github.com/mbbill/undotree)|The undo history visualizer for VIM |
| ![Star count](https://flat.badgen.net/github/stars/numToStr/Comment.nvim?label=★&color=black) |[Comment.nvim](https://github.com/numToStr/Comment.nvim) [:page_facing_up:](plug_plugins/comment.vim)|:brain: :muscle: // Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-dadbod?label=★&color=black) |[vim-dadbod](https://github.com/tpope/vim-dadbod) [:page_facing_up:](plug_plugins/dadbod.vim)|dadbod.vim: Modern database interface for Vim |
| ![Star count](https://flat.badgen.net/github/stars/editorconfig/editorconfig-vim?label=★&color=black) |[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) [:page_facing_up:](plug_plugins/editorconfig-vim.vim)|EditorConfig plugin for Vim |
| ![Star count](https://flat.badgen.net/github/stars/rcarriga/nvim-notify?label=★&color=black) |[nvim-notify](https://github.com/rcarriga/nvim-notify) [:page_facing_up:](plug_plugins/notify.vim)|A fancy, configurable, notification manager for NeoVim |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-abolish?label=★&color=black) |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: Work with several variants of a word at once |
| ![Star count](https://flat.badgen.net/github/stars/nvim-lua/plenary.nvim?label=★&color=black) |[plenary.nvim](https://github.com/nvim-lua/plenary.nvim) [:page_facing_up:](plug_plugins/diffview.vim)|plenary: full; complete; entire; absolute; unqualified. All the lua functions I don't want to write twice. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-repeat?label=★&color=black) |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ![Star count](https://flat.badgen.net/github/stars/wellle/targets.vim?label=★&color=black) |[targets.vim](https://github.com/wellle/targets.vim)|Vim plugin that provides additional text objects |
| ![Star count](https://flat.badgen.net/github/stars/nvim-treesitter/nvim-treesitter-context?label=★&color=black) |[nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) [:page_facing_up:](plug_plugins/treesitter.vim)|Show code context |
| ![Star count](https://flat.badgen.net/github/stars/kyazdani42/nvim-web-devicons?label=★&color=black) |[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)|lua `fork` of vim-web-devicons for neovim |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/splitjoin.vim?label=★&color=black) |[splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) [:page_facing_up:](plug_plugins/splitjoin.vim)|Switch between single-line and multiline forms of code |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-eunuch?label=★&color=black) |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: Helpers for UNIX |
| ![Star count](https://flat.badgen.net/github/stars/kchmck/vim-coffee-script?label=★&color=black) |[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)|CoffeeScript support for vim |
| ![Star count](https://flat.badgen.net/github/stars/dyng/ctrlsf.vim?label=★&color=black) |[ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)|A text searching plugin mimics Ctrl-Shift-F on Sublime Text 2 |
| ![Star count](https://flat.badgen.net/github/stars/MunifTanjim/nui.nvim?label=★&color=black) |[nui.nvim](https://github.com/MunifTanjim/nui.nvim) [:page_facing_up:](plug_plugins/package-info.vim)|UI Component Library for Neovim. |
| ![Star count](https://flat.badgen.net/github/stars/kristijanhusak/vim-dadbod-ui?label=★&color=black) |[vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) [:page_facing_up:](plug_plugins/dadbod.vim)|Simple UI for https://github.com/tpope/vim-dadbod |
| ![Star count](https://flat.badgen.net/github/stars/rktjmp/lush.nvim?label=★&color=black) |[lush.nvim](https://github.com/rktjmp/lush.nvim) [:page_facing_up:](plug_plugins/jellybeans.vim)|Create Neovim themes with real-time feedback, export anywhere. |
| ![Star count](https://flat.badgen.net/github/stars/kdheepak/lazygit.nvim?label=★&color=black) |[lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) [:page_facing_up:](plug_plugins/lazygit.vim)|Plugin for calling lazygit from within neovim. |
| ![Star count](https://flat.badgen.net/github/stars/kana/vim-textobj-user?label=★&color=black) |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| ![Star count](https://flat.badgen.net/github/stars/karb94/neoscroll.nvim?label=★&color=black) |[neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) [:page_facing_up:](plug_plugins/neoscroll.vim)|Smooth scrolling neovim plugin written in lua |
| ![Star count](https://flat.badgen.net/github/stars/JoosepAlviste/nvim-ts-context-commentstring?label=★&color=black) |[nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) [:page_facing_up:](plug_plugins/treesitter.vim)|Neovim treesitter plugin for setting the commentstring based on the cursor location in a file. |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/vim-peekaboo?label=★&color=black) |[vim-peekaboo](https://github.com/junegunn/vim-peekaboo)|:eyes: " / @ / CTRL-R |
| ![Star count](https://flat.badgen.net/github/stars/MaxMEllon/vim-jsx-pretty?label=★&color=black) |[vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)|:flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-rhubarb?label=★&color=black) |[vim-rhubarb](https://github.com/tpope/vim-rhubarb)|rhubarb.vim: GitHub extension for fugitive.vim |
| ![Star count](https://flat.badgen.net/github/stars/nvim-treesitter/playground?label=★&color=black) |[playground](https://github.com/nvim-treesitter/playground) [:page_facing_up:](plug_plugins/treesitter.vim)|Treesitter playground integrated into Neovim |
| ![Star count](https://flat.badgen.net/github/stars/takac/vim-hardtime?label=★&color=black) |[vim-hardtime](https://github.com/takac/vim-hardtime) [:page_facing_up:](plug_plugins/vim-hardtime.vim)|Plugin to help you stop repeating the basic movement keys |
| ![Star count](https://flat.badgen.net/github/stars/moll/vim-node?label=★&color=black) |[vim-node](https://github.com/moll/vim-node)|Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. |
| ![Star count](https://flat.badgen.net/github/stars/monaqa/dial.nvim?label=★&color=black) |[dial.nvim](https://github.com/monaqa/dial.nvim) [:page_facing_up:](plug_plugins/dial.vim)|enhanced increment/decrement plugin for Neovim. |
| ![Star count](https://flat.badgen.net/github/stars/maksimr/vim-jsbeautify?label=★&color=black) |[vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify) [:page_facing_up:](plug_plugins/vim-jsbeautify.vim)|vim plugin which formated javascript files by js-beautify |
| ![Star count](https://flat.badgen.net/github/stars/hiphish/rainbow-delimiters.nvim?label=★&color=black) |[rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim) [:page_facing_up:](plug_plugins/treesitter.vim)|Rainbow delimiters for Neovim with Tree-sitter |
| ![Star count](https://flat.badgen.net/github/stars/wellle/tmux-complete.vim?label=★&color=black) |[tmux-complete.vim](https://github.com/wellle/tmux-complete.vim)|Vim plugin for insert mode completion of words in adjacent tmux panes |
| ![Star count](https://flat.badgen.net/github/stars/tyru/open-browser.vim?label=★&color=black) |[open-browser.vim](https://github.com/tyru/open-browser.vim) [:page_facing_up:](plug_plugins/open-browser.vim)|Open URI with your favorite browser from your most favorite editor |
| ![Star count](https://flat.badgen.net/github/stars/mizlan/iswap.nvim?label=★&color=black) |[iswap.nvim](https://github.com/mizlan/iswap.nvim) [:page_facing_up:](plug_plugins/iswap.vim)|Interactively select and swap function arguments, list elements, and much more. Powered by tree-sitter. |
| ![Star count](https://flat.badgen.net/github/stars/jparise/vim-graphql?label=★&color=black) |[vim-graphql](https://github.com/jparise/vim-graphql)|A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation. |
| ![Star count](https://flat.badgen.net/github/stars/vuki656/package-info.nvim?label=★&color=black) |[package-info.nvim](https://github.com/vuki656/package-info.nvim) [:page_facing_up:](plug_plugins/package-info.vim)|✍️ All the npm/yarn/pnpm commands I don't want to type |
| ![Star count](https://flat.badgen.net/github/stars/yamatsum/nvim-cursorline?label=★&color=black) |[nvim-cursorline](https://github.com/yamatsum/nvim-cursorline) [:page_facing_up:](plug_plugins/nvim-cursorline.vim)|A plugin for neovim that highlights cursor words and lines |
| ![Star count](https://flat.badgen.net/github/stars/haya14busa/vim-asterisk?label=★&color=black) |[vim-asterisk](https://github.com/haya14busa/vim-asterisk) [:page_facing_up:](plug_plugins/vim-asterisk.vim)|:snowflake: *-Improved |
| ![Star count](https://flat.badgen.net/github/stars/xolox/vim-misc?label=★&color=black) |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-ragtag?label=★&color=black) |[vim-ragtag](https://github.com/tpope/vim-ragtag)|ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim) |
| ![Star count](https://flat.badgen.net/github/stars/tmux-plugins/vim-tmux?label=★&color=black) |[vim-tmux](https://github.com/tmux-plugins/vim-tmux) [:page_facing_up:](plug_plugins/vim-tmux.vim)|vim plugin for tmux.conf |
| ![Star count](https://flat.badgen.net/github/stars/ziontee113/color-picker.nvim?label=★&color=black) |[color-picker.nvim](https://github.com/ziontee113/color-picker.nvim) [:page_facing_up:](plug_plugins/color-picker.vim)|A powerful Neovim plugin that lets users choose & modify RGB/HSL/HEX colors. |
| ![Star count](https://flat.badgen.net/github/stars/lifepillar/pgsql.vim?label=★&color=black) |[pgsql.vim](https://github.com/lifepillar/pgsql.vim) [:page_facing_up:](plug_plugins/pgsql.vim)|The best PostgreSQL plugin for Vim! |
| ![Star count](https://flat.badgen.net/github/stars/christoomey/vim-sort-motion?label=★&color=black) |[vim-sort-motion](https://github.com/christoomey/vim-sort-motion)|Vim mapping for sorting a range of text |
| ![Star count](https://flat.badgen.net/github/stars/fannheyward/telescope-coc.nvim?label=★&color=black) |[telescope-coc.nvim](https://github.com/fannheyward/telescope-coc.nvim) [:page_facing_up:](plug_plugins/telescope.vim)|coc.nvim integration for telescope.nvim |
| ![Star count](https://flat.badgen.net/github/stars/yssl/QFEnter?label=★&color=black) |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| ![Star count](https://flat.badgen.net/github/stars/rodrigore/coc-tailwind-intellisense?label=★&color=black) |[coc-tailwind-intellisense](https://github.com/rodrigore/coc-tailwind-intellisense) [:page_facing_up:](plug_plugins/coc.vim)|Coc.nvim extension for Tailwind CSS IntelliSense |
| ![Star count](https://flat.badgen.net/github/stars/Valloric/ListToggle?label=★&color=black) |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_plugins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| ![Star count](https://flat.badgen.net/github/stars/jszakmeister/vim-togglecursor?label=★&color=black) |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](plug_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/metalelf0/jellybeans-nvim?label=★&color=black) |[jellybeans-nvim](https://github.com/metalelf0/jellybeans-nvim) [:page_facing_up:](plug_plugins/jellybeans.vim)|A port of jellybeans colorscheme for neovim |
| ![Star count](https://flat.badgen.net/github/stars/sk1418/Join?label=★&color=black) |[Join](https://github.com/sk1418/Join)|a better (hopefully) :Join command in vim |
| ![Star count](https://flat.badgen.net/github/stars/nono/vim-handlebars?label=★&color=black) |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/scratch.vim?label=★&color=black) |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| ![Star count](https://flat.badgen.net/github/stars/henrik/vim-reveal-in-finder?label=★&color=black) |[vim-reveal-in-finder](https://github.com/henrik/vim-reveal-in-finder)|Reveal the current file in the OS X Finder. |
| ![Star count](https://flat.badgen.net/github/stars/cxwx/specs.nvim?label=★&color=black) |[specs.nvim](https://github.com/cxwx/specs.nvim) [:page_facing_up:](plug_plugins/specs.vim)|👓 A fast and lightweight Neovim lua plugin to keep an eye on where your cursor has jumped. |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/HelpClose?label=★&color=black) |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| ![Star count](https://flat.badgen.net/github/stars/mutewinter/vim-autoreadwatch?label=★&color=black) |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |
| ![Star count](https://flat.badgen.net/github/stars/mutewinter/nvim-colorizer.lua?label=★&color=black) |[nvim-colorizer.lua](https://github.com/mutewinter/nvim-colorizer.lua) [:page_facing_up:](plug_plugins/nvim-colorizer.vim)|Fork of Neovim colorizer to support Typewind |
| ![Star count](https://flat.badgen.net/github/stars/glepnir/indent-guides.nvim?label=★&color=black) |[indent-guides.nvim](https://github.com/glepnir/indent-guides.nvim) [:page_facing_up:](plug_plugins/indent-guides.vim)|Problem fetching glepnir/indent-guides.nvim. |

_That's 77 plugins, holy crap._

_Generated by `rake update_readme` on 2024/10/18._

