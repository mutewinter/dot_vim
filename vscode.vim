" ------------------------
" VSCode / Cursor Mappings
" ------------------------

" For testing VSCode environment.
" finish

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
vim.keymap.set('n', '<leader>,', actions(
  {'workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup',
  'workbench.action.acceptSelectedQuickOpenItem'}
))
vim.keymap.set('n', '<leader>fd', action('workbench.actions.view.problems'))
vim.keymap.set('n', '<leader>fR', action('editor.action.goToReferences'))
vim.keymap.set('n', '<leader>m', action('workbench.action.showAllEditorsByMostRecentlyUsed'))

-- Basic
vim.keymap.set('n', '<enter>', action('workbench.action.files.save'))
vim.keymap.set('n', 'gF', action('editor.action.formatDocument'))
vim.keymap.set('n', '<leader>gd', action('git.openChange'))
-- Keep undo/redo in sync with VSCode (for persistent undo and fixes auto
-- write happening with undo)
-- https://github.com/vscode-neovim/vscode-neovim/issues/1139
vim.keymap.set('n', 'u', action('undo'))
vim.keymap.set('n', 'U', action('redo'))
 -- VSCode undo can create visual selections, so we have to remap it in visual
 -- mode as well to avoid accidentally changing case.
vim.keymap.set('v', 'u', action('undo'))
vim.keymap.set('v', 'U', action('redo'))
vim.keymap.set('n', '<leader>ss', action('workbench.scm.focus'))

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
vim.keymap.set('v', '<up>', '17k', { noremap = true, silent = true })
vim.keymap.set('v', '<down>', '17j', { noremap = true, silent = true })
vim.keymap.set('n', 'gn', actions({'editor.action.marker.next', 'closeMarkersNavigation'}))
vim.keymap.set('n', 'gN', actions({'editor.action.marker.prev', 'closeMarkersNavigation'}))
vim.keymap.set('n', '<leader>gn', action('workbench.action.editor.nextChange'))
vim.keymap.set('n', '<leader>gN', action('workbench.action.editor.previousChange'))

-- Unmap q because I keep getting stuck in macro recording accidentally
vim.keymap.set('n', 'q', '<nop>', { noremap = true })

-- Testing
vim.keymap.set('n', '<leader>tt', action('testing.runAtCursor'))
vim.keymap.set('n', '<leader>td', action('testing.debugAtCursor'))
vim.keymap.set('n', '<leader>tT', action('testing.runCurrentFile'))
vim.keymap.set('n', '<leader>tn', action('testing.goToNextMessage'))
vim.keymap.set('n', '<leader>tN', action('testing.goToPreviousMessage'))
vim.keymap.set('n', '<leader>tc', action('testing.toggleContinuousRunForTest'))
vim.keymap.set('n', '<leader>tf', action('workbench.view.testing.focus'))

-- ----------
-- Extensions
-- ----------

-- Neovim Extension Itself
vim.keymap.set('n', '<leader>nr', action('vscode-neovim.restart'))

-- Periscope
vim.keymap.set('n', '<leader>fr', action('periscope.search'))

-- LazyGit
vim.keymap.set('n', '<leader>gg', action('lazygit-vscode.toggle'))
-- Find It Faster
vim.keymap.set('n', '<leader>fr', action('find-it-faster.findWithinFiles'))
EOF
