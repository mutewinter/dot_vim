" ------------------------
" VSCode / Cursor Mappings
" ------------------------

lua << EOF
local vscode = require('vscode')

function action(method, opts)
  return function()
    vscode.action(method, opts)
  end
end

function actions(methods, opts)
  return function()
    for _, method in ipairs(methods) do
      vscode.action(method, opts)
    end
  end
end


-- Search
vim.keymap.set('n', '<leader>,', action('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup'))
vim.keymap.set('n', '<leader>fd', action('workbench.actions.view.problems'))
vim.keymap.set('n', '<leader>fR', action('editor.action.goToReferences'))

-- Basic
vim.keymap.set('n', '<enter>', action('workbench.action.files.save'))
vim.keymap.set('n', 'gF', action('editor.action.formatDocument'))
vim.keymap.set('n', '<leader>gd', action('git.openChange'))

-- LSP
vim.keymap.set('n', '<leader>rn', action('editor.action.rename'))
vim.keymap.set('n', 'gD', action('editor.action.showHover'))
vim.keymap.set('n', '<leader>bb', actions({'editor.action.marker.next', 'editor.action.quickFix'}))


-- Splits
vim.keymap.set('n', '<leader>hs', actions({'workbench.action.splitEditorDown', 'workbench.action.evenEditorWidths'}))
vim.keymap.set('n', '<leader>vs', actions({'workbench.action.splitEditorRight', 'workbench.action.evenEditorWidths'}))

-- Navigation
vim.keymap.set('n', '<f3>', action('workbench.action.focusActiveEditorGroup'))
vim.keymap.set('n', '<f4>', action('workbench.action.terminal.toggleTerminal'))
vim.keymap.set('n', '<leader>nn', action('workbench.action.toggleSidebarVisibility'))
vim.keymap.set('n', '<leader>nf', action('workbench.files.action.showActiveFileInExplorer'))
vim.keymap.set('n', '<up>', '17k', { noremap = true, silent = true })
vim.keymap.set('n', '<down>', '17j', { noremap = true, silent = true })
vim.keymap.set('n', 'gn', actions({'editor.action.marker.next', 'closeMarkersNavigation'}))
vim.keymap.set('n', 'gN', actions({'editor.action.marker.prev', 'closeMarkersNavigation'}))
vim.keymap.set('n', '<leader>gn', action('workbench.action.editor.nextChange'))
vim.keymap.set('n', '<leader>gN', action('workbench.action.editor.previousChange'))

-- ----------
-- Extensions
-- ----------

-- Neovim Extension Itself
vim.keymap.set('n', '<leader>nr', action('vscode-neovim.restart'))

-- Periscope
vim.keymap.set('n', '<leader>fr', action('periscope.search'))

-- LazyGit
vim.keymap.set('n', '<leader>gg', action('lazygit-vscode.toggle'))
EOF
