-- Tabbing
vim.keymap.set('n', '<leader>to', ":tabnew<CR>", {})
vim.keymap.set('n', '<leader>tn', ":tabnext<CR>", {})
vim.keymap.set('n', '<leader>tp', ":tabprevious<CR>", {})


-- Split window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
vim.keymap.set("n", "<leader>sj", "<C-w>-")     -- make split window height shorter
vim.keymap.set("n", "<leader>sk", "<C-w>+")     -- make split windows height taller
vim.keymap.set("n", "<leader>sl", "<C-w>>5")    -- make split windows width bigger
vim.keymap.set("n", "<leader>sh", "<C-w><5")    -- make split windows width smaller


-- Terminal
vim.keymap.set('t', '<C-space>', "<C-\\><C-n><C-w>h", { silent = true })
vim.keymap.set('n', '<Leader>te', ":ToggleTerm<CR>", { silent = true })

-- Fold
vim.keymap.set('n', '<leader>fc', ":foldclose<CR>", { silent = true })
vim.keymap.set('n', '<leader>fo', ":foldopen<CR>", { silent = true })

-- Colors
vim.keymap.set("n", "<Leader>ct", ":ColorizerToggle<CR>", {})

-- Movement
vim.api.nvim_set_keymap("n", "<C-j>", "10j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "10k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "10l", { silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "10h", { silent = true })

-- Nvim-Tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>h", ":NvimTreeFocus<CR>", {})

-- UndoTree
vim.keymap.set('n', "<leader>ut", ":UndotreeToggle<CR>", {})
vim.keymap.set('n', "<leader>uf", ":UndotreeFocus<CR>", {})
vim.keymap.set('n', "<leader>uh", ":UndotreeHide<CR>", {})

-- CommentToggle
vim.keymap.set('n', "<leader>gc", ":CommentToggle<CR>", {})
vim.keymap.set('n', "<leader>gv", ":'<,'>CommentToggle<CR>", {})
