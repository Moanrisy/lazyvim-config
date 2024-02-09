-- https://github.com/laytan/tailwind-sorter.nvim?tab=readme-ov-file
return {
  "laytan/tailwind-sorter.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
  build = "cd formatter && npm i && npm run build",
  config = true,
}
