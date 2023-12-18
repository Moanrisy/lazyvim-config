-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- manually set commentstring
-- :setlocal commentstring=#%s

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*.conf",
  command = "setlocal filetype=conf | setlocal commentstring=#%s",
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*.mytype2",
  command = "setlocal filetype=mytype2 | setlocal commentstring=#amazingtype2%sendstatement",
})

-- For debugging
-- vim.api.nvim_create_autocmd("FileType", {
--   -- pattern = { "lua", "html", "^/(?!notify|noice|notify)([a-z0-9]+)$", "*" },
--   pattern = { "*" },
--   callback = function()
--     local filetype = vim.bo.filetype
--
--     -- Check if the filetype is empty or undefined
--     if not filetype or filetype == "" then
--       print("Filetype is empty or undefined")
--       return
--     end
--
--     local data = {
--       buf = vim.fn.expand("<abuf>"),
--       file = vim.fn.expand("<cfile>"),
--       match = vim.fn.expand("<amatch>"),
--       filename = vim.fn.expand("%"),
--       hmm = "hmm",
--     }
--
--     vim.schedule(function()
--       -- print("Hey, we got called")
--       if
--         data.match ~= "noice"
--         and data.match ~= "notify"
--         and data.match ~= "TelescopeResults"
--         and data.match ~= "TelescopePrompt"
--       then
--         print(vim.inspect(data))
--       end
--     end)
--   end,
-- })
