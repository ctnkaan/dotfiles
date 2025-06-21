return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here or use the default settings
  },
  keys = {
    {
      "<leader>do",
      "<Cmd>DiffviewOpen<CR>",
      desc = "DiffView Open",
    },
    {
      "<leader>dc",
      "<Cmd>DiffviewClose<CR>",
      desc = "DiffView Close",
    },
    {
      "<leader><Tab>",
      "<Cmd>BufferNext<CR>",
      desc = "Move to Next Buffer",
    },
    {
      "<leader>bq",
      "<Cmd>BufferClose<CR>",
      desc = "Close Buffer",
    },
    {
      "<leader>?",
      "<Cmd>lua require('which-key').show({ global = false })<CR>",
      desc = "Buffer Local Keymaps (which-key)",
    },
    {
      "<leader>nf",
      function()
        vim.lsp.buf.format()
      end,
      desc = "Format File",
    },
    {
      "K",
      "<Cmd>lua vim.lsp.buf.hover()<CR>",
      desc = "LSP Hover",
    },
    {
      "<leader>gd",
      "<Cmd>lua vim.lsp.buf.definition()<CR>",
      desc = "LSP Definition",
    },
    {
      "<leader>gr",
      "<Cmd>lua vim.lsp.buf.references()<CR>",
      desc = "LSP References",
    },
    {
      "<leader>ca",
      "<Cmd>lua vim.lsp.buf.code_action()<CR>",
      desc = "LSP Code Action",
    },
    -- Neotree keybindings
    {
      "<leader>e",
      "<Cmd>Neotree toggle <CR>",
      desc = "Toggle Neotree",
    },
    {
      "<leader>ff",
      "<Cmd>Neotree focus <CR>",
      desc = "Focus Neotree",
    },
    {
      "<leader>bf",
      ":Neotree buffers reveal float<CR>",
      desc = "Neotree Buffers Float",
    },
    -- Telescope keybindings
    {
      "<leader><leader>",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Live Grep",
    },
    -- Gitsigns keybindings
    {
      "<leader>gp",
      "<cmd>Gitsigns preview_hunk<CR>",
      desc = "Gitsigns Preview Hunk",
    },
    {
      "<leader>gt",
      "<cmd>Gitsigns toggle_current_line_blame<CR>",
      desc = "Gitsigns Toggle Line Blame",
    },
    -- Trouble keybindings
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Trouble Diagnostics",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Trouble Buffer Diagnostics",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Trouble Symbols",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "Trouble LSP",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Trouble Loclist",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Trouble Quickfix",
    },
    -- nvim-surround keybindings
    {
      "ys",
      mode = { "n", "v" },
      desc = "Add Surround",
    },
    {
      "ds",
      mode = "n",
      desc = "Delete Surround",
    },
    {
      "cs",
      mode = "n",
      desc = "Change Surround",
    },
  },
}
