return {
  "folke/tokyonight.nvim",
  lazy = false,        -- Load the plugin immediately
  priority = 1000,     -- Ensure it loads before others
  opts = {
    style = "moon",   -- Options: "storm", "moon", "night", "day"
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = { bold = true },
    },
  },
  config = function()
    vim.cmd("colorscheme tokyonight")
  end,
}

