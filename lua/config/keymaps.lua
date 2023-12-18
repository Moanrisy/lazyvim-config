-- Keymaps are automaticallyjloaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local Util = require("lazyvim.util")

-- keymap.set("n", "J", "7j", { desc = "Move 5 lines down" })

local termBevyDynamicLinking = function()
  Util.terminal({ "cargo", "run", "--features", "bevy/dynamic_linking" }, { cwd = Util.root() })
end

keymap.set("n", "<C-1>", termBevyDynamicLinking, { desc = "cargo run" })
keymap.set("t", "<C-1>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Switch to other buffer already implemented with SPC-b-b
-- keymap('n', '<Space><Esc>', [[:lua openLastFile()<CR>]], { noremap = true, silent = true, desc = 'Open last file' })
-- keymap.set("n", "<leader>1", "3j", { desc = "Jump to last file" })
