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

-- Better Navigation
local keymap = vim.keymap

keymap.set("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
keymap.set("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })

keymap.set("n", "<Space>", ':call VSCodeNotify("whichkey.show")<CR>', { noremap = true, silent = true })
keymap.set("x", "<Space>", ":call v:lua.openWhichKeyInVisualMode()<CR>", { noremap = true, silent = true })
keymap.set("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', { silent = true })

keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "smart vertical up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "smart vertical down" })
keymap.set("n", "U", "<C-r>", { desc = "redo" })

-- paste without overwriting
keymap.set("v", "p", "P")
