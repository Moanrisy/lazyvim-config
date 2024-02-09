-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.cmd([[ set nofoldenable]])         -- Disable folding at startup
vim.opt.foldenable = true

-- wrap lines with too long
vim.opt.wrap = true
