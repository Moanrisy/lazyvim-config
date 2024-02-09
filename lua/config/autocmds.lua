-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- auto save
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  command = "silent! wa",
})

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

--- conceal tailwindcss based on class or classNames for jsx
local conceal_ns = vim.api.nvim_create_namespace("class_conceal")
function ConcealHTML(bufnr)
  local language_tree = vim.treesitter.get_parser(bufnr, "html")
  local syntax_tree = language_tree:parse()
  local root = syntax_tree[1]:root()

  local query = vim.treesitter.query.parse(
    "html",
    [[
    ((attribute
        (attribute_name) @att_name (#any-of? @att_name "class" "className")
        (quoted_attribute_value (attribute_value) @class_value) (#set! @class_value conceal "💩")))
    ]]
  )

  for _, captures, metadata in query:iter_matches(root, bufnr, root:start(), root:end_()) do
    local start_row, start_col, end_row, end_col = captures[2]:range()
    vim.api.nvim_buf_set_extmark(bufnr, conceal_ns, start_row, start_col, {
      end_line = end_row,
      end_col = end_col,
      conceal = metadata[2].conceal,
    })
  end
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChanged", "InsertLeave" }, {
  pattern = { "*.html", "*.jsx" },
  callback = function()
    vim.opt.conceallevel = 2 -- Concealed text is completely hidden
    local bufnr = vim.api.nvim_get_current_buf()
    -- TOGGLE
    ConcealHTML(bufnr)
  end,
})
