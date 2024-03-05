-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  require("vscode")
else
  -- neovim
  require("config.lazy")
end
