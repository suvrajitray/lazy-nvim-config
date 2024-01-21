-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
local keymap = vim.keymap
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find text (root dir)" })
