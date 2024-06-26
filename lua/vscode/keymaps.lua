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
-- vim.g.mapleader = " "

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

-- up and down and left and right navigation
keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "move the cursor to five line up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "move the cursor to five lines down" })
keymap.set({ "n", "x", "v" }, "<Left>", "^", { desc = "move the cursor to first charactor of line" })
keymap.set({ "n", "x", "v" }, "<Right>", "$", { desc = "move the cursor to last charactor of line" })

-- buffer navigation
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

-- redo.
keymap.set("n", "U", "<C-r>", { desc = "redo", silent = true })

-- paste without overwriting
keymap.set("v", "p", "P")

-- whichkey configuration
keymap.set("n", "<Space>", ':call VSCodeNotify("whichkey.show")<CR>', { noremap = true, silent = true })
keymap.set("x", "<Space>", ":call v:lua.openWhichKeyInVisualMode()<CR>", { noremap = true, silent = true })