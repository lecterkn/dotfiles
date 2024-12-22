-- options
local opts = { noremap = true, silent = true }

-- <leader>
vim.g.mapleader = " "
-- project files
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- switch window focus
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
