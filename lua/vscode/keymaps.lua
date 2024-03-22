function openWhichKeyInVisualMode()
  vim.cmd("normal! gv")
  local visualmode = vim.fn.visualmode()
  if visualmode == "V" then
    local startLine, endLine = vim.fn.line("v"), vim.fn.line(".")
    vim.fn["VSCodeNotifyRange"]("whichkey.show", startLine, endLine, 1)
  else
    local startPos, endPos = vim.fn.getpos("v"), vim.fn.getpos(".")
    vim.fn["VSCodeNotifyRangePos"]("whichkey.show", startPos[2], endPos[2], startPos[3], endPos[3], 1)
  end
end

-- map leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- better navigation
keymap.set("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
keymap.set("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })

keymap.set(
  "n",
  "<S-l>",
  ':call VSCodeNotify("workbench.action.nextEditor")<CR>',
  { silent = true, desc = "next buffer" }
)

keymap.set(
  "n",
  "<S-h>",
  ':call VSCodeNotify("workbench.action.previousEditor")<CR>',
  { silent = true, desc = "previous buffer" }
)

keymap.set("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', { silent = true })
keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "smart vertical up", silent = true })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "smart vertical down", silent = true })
keymap.set("n", "U", "<C-r>", { desc = "redo", silent = true })

-- save file
keymap.set(
  "n",
  "<leader>w",
  ':call VSCodeNotify("workbench.action.files.save")<CR>',
  { silent = true, desc = "save file" }
)

keymap.set(
  "n",
  "<leader>;",
  ':call VSCodeNotify("workbench.action.showCommands")<CR>',
  { silent = true, desc = "show command window" }
)

keymap.set(
  "n",
  "<leader>q",
  ':call VSCodeNotify("workbench.action.closeActiveEditor")<CR>',
  { silent = true, desc = "close active editor" }
)

keymap.set(
  "n",
  "<leader>?",
  ':call VSCodeNotify("references-view.find")<CR>',
  { silent = true, desc = "find references" }
)

-- buffers and editors.
keymap.set(
  "n",
  "<leader>bb",
  ':call VSCodeNotify("workbench.action.showAllEditors")<CR>',
  { silent = true, desc = "show all buffers/editors" }
)

keymap.set(
  "n",
  "<leader>bd",
  ':call VSCodeNotify("workbench.action.closeActiveEditor")<CR>',
  { silent = true, desc = "close active editor" }
)
keymap.set(
  "n",
  "<leader>bh",
  ':call VSCodeNotify("workbench.action.moveEditorToLeftGroup")<CR>',
  { silent = true, desc = "move editor to left group" }
)

keymap.set(
  "n",
  "<leader>bj",
  ':call VSCodeNotify("workbench.action.moveEditorToBelowGroup")<CR>',
  { silent = true, desc = "move editor to below group" }
)

keymap.set(
  "n",
  "<leader>bk",
  ':call VSCodeNotify("workbench.action.moveEditorToAboveGroup")<CR>',
  { silent = true, desc = "move editor to above group" }
)

keymap.set(
  "n",
  "<leader>bl",
  ':call VSCodeNotify("workbench.action.moveEditorToRightGroup")<CR>',
  { silent = true, desc = "move editor to right group" }
)

keymap.set(
  "n",
  "<leader>bm",
  ':call VSCodeNotify("workbench.action.closeOtherEditors")<CR>',
  { silent = true, desc = "close other windows" }
)

keymap.set(
  "n",
  "<leader>bn",
  ':call VSCodeNotify("workbench.action.nextEditor")<CR>',
  { silent = true, desc = "next buffer" }
)

keymap.set(
  "n",
  "<leader>bp",
  ':call VSCodeNotify("workbench.action.previousEditor")<CR>',
  { silent = true, desc = "previous buffer" }
)

keymap.set(
  "n",
  "<leader>bN",
  ':call VSCodeNotify("workbench.action.files.newUntitledFile")<CR>',
  { silent = true, desc = "new untitled buffer" }
)

keymap.set(
  "n",
  "<leader>bu",
  ':call VSCodeNotify("workbench.action.reopenClosedEditor")<CR>',
  { silent = true, desc = "reopen closed buffer" }
)

-- debug
keymap.set(
  "n",
  "<leader>dd",
  ':call VSCodeNotify("workbench.action.debug.start")<CR>',
  { silent = true, desc = "start debug" }
)

keymap.set(
  "n",
  "<leader>dS",
  ':call VSCodeNotify("workbench.action.debug.stop")<CR>',
  { silent = true, desc = "stop debug" }
)

keymap.set(
  "n",
  "<leader>dc",
  ':call VSCodeNotify("workbench.action.debug.continue")<CR>',
  { silent = true, desc = "continue debug" }
)

keymap.set(
  "n",
  "<leader>dp",
  ':call VSCodeNotify("workbench.action.debug.pause")<CR>',
  { silent = true, desc = "pause debug" }
)

keymap.set(
  "n",
  "<leader>dr",
  ':call VSCodeNotify("workbench.action.debug.run")<CR>',
  { silent = true, desc = "run without debug" }
)

keymap.set(
  "n",
  "<leader>dR",
  ':call VSCodeNotify("workbench.action.debug.restart")<CR>',
  { silent = true, desc = "restart debug" }
)

keymap.set(
  "n",
  "<leader>di",
  ':call VSCodeNotify("workbench.action.debug.stepInto")<CR>',
  { silent = true, desc = "step into" }
)

keymap.set(
  "n",
  "<leader>ds",
  ':call VSCodeNotify("workbench.action.debug.stepOver")<CR>',
  { silent = true, desc = "step over" }
)

keymap.set(
  "n",
  "<leader>do",
  ':call VSCodeNotify("workbench.action.debug.stepOut")<CR>',
  { silent = true, desc = "step out" }
)

keymap.set(
  "n",
  "<leader>db",
  ':call VSCodeNotify("editor.debug.action.toggleBreakpoint")<CR>',
  { silent = true, desc = "toggle break point" }
)

keymap.set(
  "n",
  "<leader>dB",
  ':call VSCodeNotify("editor.debug.action.toggleInlineBreakpoint")<CR>',
  { silent = true, desc = "toggle inline break point" }
)
keymap.set(
  "n",
  "<leader>dj",
  ':call VSCodeNotify("debug.jumpToCursor")<CR>',
  { silent = true, desc = "jump to cursor" }
)

keymap.set(
  "n",
  "<leader>dv",
  ':call VSCodeNotify("workbench.debug.action.toggleRepl")<CR>',
  { silent = true, desc = "REPL" }
)

keymap.set(
  "n",
  "<leader>dw",
  ':call VSCodeNotify("workbench.debug.action.focusWatchView")<CR>',
  { silent = true, desc = "focus on watch window" }
)

keymap.set(
  "n",
  "<leader>dW",
  ':call VSCodeNotify("editor.debug.action.selectionToWatch")<CR>',
  { silent = true, desc = "add to watch" }
)

-- toggle exporer
keymap.set(
  "n",
  "<leader>e",
  ':call VSCodeNotify("workbench.action.toggleSidebarVisibility")<CR>',
  { silent = true, desc = "toggle explorer" }
)

-- find and replace
keymap.set(
  "n",
  "<leader>ff",
  ':call VSCodeNotify("editor.action.startFindReplaceAction")<CR>',
  { silent = true, desc = "find & replace in current file" }
)

keymap.set(
  "n",
  "<leader>fp",
  ':call VSCodeNotify("workbench.action.replaceInFiles")<CR>',
  { silent = true, desc = "find & replace in all file" }
)

-- git and version control
keymap.set("n", "<leader>ga", ':call VSCodeNotify("git.stage")<CR>', { silent = true, desc = "add stage" })
keymap.set("n", "<leader>gb", ':call VSCodeNotify("git.checkout")<CR>', { silent = true, desc = "git checkout" })
keymap.set("n", "<leader>gB", ':call VSCodeNotify("gitlens.openFileInRemote")<CR>', { silent = true, desc = "browse" })
keymap.set("n", "<leader>gc", ':call VSCodeNotify("git.commit")<CR>', { silent = true, desc = "commit" })
keymap.set("n", "<leader>gf", ':call VSCodeNotify("git.fetch")<CR>', { silent = true, desc = "fetch" })
keymap.set("n", "<leader>gm", ':call VSCodeNotify("git.merge")<CR>', { silent = true, desc = "merge" })
keymap.set("n", "<leader>gp", ':call VSCodeNotify("git.push")<CR>', { silent = true, desc = "push" })
keymap.set("n", "<leader>gP", ':call VSCodeNotify("git.pull")<CR>', { silent = true, desc = "pull" })

keymap.set(
  "n",
  "<leader>sh",
  ':call VSCodeNotify("workbench.action.splitEditorDown")<CR>',
  { silent = true, desc = "split horizontal" }
)

-- lsp and code actions
keymap.set("n", "<leader>l;", ':call VSCodeNotify("editor.action.refactor")<CR>', { silent = true, desc = "refactor" })
keymap.set("n", "<leader>la", ':call VSCodeNotify("editor.action.autoFix")<CR>', { silent = true, desc = "auto fix" })

keymap.set(
  "n",
  "<leader>ld",
  ':call VSCodeNotify("editor.action.revealDefinition")<CR>',
  { silent = true, desc = "definition" }
)

keymap.set(
  "n",
  "<leader>lD",
  ':call VSCodeNotify("editor.action.revealDeclaration")<CR>',
  { silent = true, desc = "declaration" }
)

keymap.set(
  "n",
  "<leader>le",
  ':call VSCodeNotify("workbench.actions.view.problems")<CR>',
  { silent = true, desc = "Error" }
)

keymap.set(
  "n",
  "<leader>li",
  ':call VSCodeNotify("editor.action.goToImplementation")<CR>',
  { silent = true, desc = "go to implimentation" }
)

keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })
--keymap.set("n", "<leader>", ':call VSCodeNotify("")<CR>', { silent = true, desc = "" })

-- paste without overwriting
keymap.set("v", "p", "P")

keymap.set("n", "<BS>", ':call VSCodeNotify("whichkey.show")<CR>', { noremap = true, silent = true })
keymap.set("x", "<BS>", ":call v:lua.openWhichKeyInVisualMode()<CR>", { noremap = true, silent = true })
