-- Better Navigation
vim.api.nvim_set_keymap("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
vim.api.nvim_set_keymap("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
vim.api.nvim_set_keymap("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
vim.api.nvim_set_keymap("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
vim.api.nvim_set_keymap("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })

vim.api.nvim_set_keymap("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', { silent = true })

local keymap = vim.keymap

keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "smart vertical up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "smart vertical down" })
keymap.set("n", "U", "<C-r>", { desc = "redo" })

-- paste without overwriting
keymap.set("v", "p", "P")
