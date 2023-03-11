-- Leader:
vim.g.mapleader = ' '

vim.keymap.set("n", "<CR>", ":nohlsearch<CR>", { silent = true })
vim.keymap.set("i", "ii","<Esc>l", { silent = true })
vim.keymap.set("n", "<leader>pv",":Ex<CR>", { silent = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

