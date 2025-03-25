vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.wo.number = true
vim.opt.clipboard = "unnamedplus"

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader><Tab>', '<Cmd>BufferNext<CR>', opts)

-- Close buffer
map('n', '<leader>bq', '<Cmd>BufferClose<CR>', opts)
