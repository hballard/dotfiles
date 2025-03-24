return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      style = "warm",
      --tranparency options
      -- transparent = true,
      -- lualine = {
      --   transparent = true, -- lualine center bar transparency
      -- },
      -- highlights = {
      --   -- make floating windows transparent
      --   NormalFloat = { bg = "none" },
      --   FloatBorder = { bg = "none" },
      --   -- but keep background for Lazy and Mason
      --   LazyNormal = { fg = "$fg", bg = "$bg1" },
      --   MasonNormal = { fg = "$fg", bg = "$bg1" },
      -- },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
