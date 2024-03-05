vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("nmap <leader>w :w<cr>")
vim.cmd("nmap <leader>nh :nohl<cr>")

local keymap = vim.keymap

keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "smart vertical up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "smart vertical down" })
keymap.set("n", "U", "<C-r>", { desc = "redo" })

-- paste without overwriting
keymap.set("v", "p", "P")
