return {
  -- Configure loaded colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "nightfly",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "ayu-dark",
      -- colorscheme = "ayu-mirage",
      -- colorscheme = "moonfly",
      -- colorscheme = "melange", -- pretty good warm color
      -- colorscheme = "onenord",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "ayu-light",                       -- too bright
      -- colorscheme = "gruvbox-baby",
      -- colorscheme = "nordic",
      -- style = "moon", -- the default: tokyonight
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-latte",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "gruvbox",
      -- colorscheme = "dracula",
      -- colorscheme = "PaperColor",
      colorscheme = "kanagawa-wave",
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "kanagawa-lotus",
      -- colorscheme = "tender",
    },
  },
  { "rmehri01/onenord.nvim" },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "savq/melange-nvim" },
  {
    "nyoom-engineering/oxocarbon.nvim",
    {
      "Shatur/neovim-ayu",
    },
    { "luisiacc/gruvbox-baby" },
    { "AlexvZyl/nordic.nvim" },
    { "jacoborus/tender.vim" },
    { "rebelot/kanagawa.nvim" },
    { "NLKNguyen/papercolor-theme" },
    { "Mofiqul/dracula.nvim" },
    {
      "folke/tokyonight.nvim",
      lazy = true,
      opts = { style = "storm" },
      -- vim.cmd("colorscheme tokyonight-night") -- for night themes
      -- vim.cmd("colorscheme tokyonight-storm") -- for storm themes
      -- vim.cmd("colorscheme tokyonight-day") -- for day theme
      -- vim.cmd("colorscheme tokyonight-moon") -- for moon theme
    },
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },
    -- solarized-osaka
    {
      "craftzdog/solarized-osaka.nvim",
      branch = "osaka",
      lazy = true,
      priority = 1000,
      opts = function()
        return {
          transparent = true,
        }
      end,
    },
    -- catppuccin
    {
      "catppuccin/nvim",
      lazy = true,
      name = "catppuccin",
      opts = {
        integrations = {
          aerial = true,
          alpha = true,
          cmp = true,
          dashboard = true,
          flash = true,
          gitsigns = true,
          headlines = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          leap = true,
          lsp_trouble = true,
          mason = true,
          markdown = true,
          mini = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          semantic_tokens = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          which_key = true,
        },
      },
    },
  },
}
