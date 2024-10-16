-- Tabbing
vim.keymap.set('n', '<leader>to', ":tabnew<CR>", {})
vim.keymap.set('n', '<leader>tn', ":tabnext<CR>", {})
vim.keymap.set('n', '<leader>tp', ":tabprevious<CR>", {})

-- Colors
vim.keymap.set("n", "<Leader>ct", ":ColorizerToggle<CR>", {})

-- Movement
vim.api.nvim_set_keymap("n", "<C-j>", "10j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "10k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "10l", { silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "10h", { silent = true })
