-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
local keymap = vim.keymap
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find text (root dir)" })

-- Center buffer while navigating
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "{", "{zz")
keymap.set("n", "}", "}zz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "n", "nzz")
keymap.set("n", "G", "Gzz")
keymap.set("n", "gg", "ggzz")
keymap.set("n", "<C-i>", "<C-i>zz")
keymap.set("n", "<C-o>", "<C-o>zz")
keymap.set("n", "%", "%zz")
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")
keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "smart vertical up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "smart vertical down" })
keymap.set("n", "U", "<C-r>", { desc = "redo" })
