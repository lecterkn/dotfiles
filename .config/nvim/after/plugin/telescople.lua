local builtin = require('telescope.builtin')

-- mapping
-- find files
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
-- grep
vim.keymap.set('n', '<leader>ss', builtin.live_grep)
-- colorscheme
vim.keymap.set('n', '<leader>th', ":Telescope colorscheme<CR>")
