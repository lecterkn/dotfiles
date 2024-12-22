require("barbar").setup({
    animation = false,
})
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
