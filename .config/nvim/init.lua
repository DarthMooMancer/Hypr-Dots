vim.opt.termguicolors = true
require("config.lazy")
require("config.keymap")
require("toggleterm").setup{}
require("barbecue.ui").toggle(true)
require("trouble").setup{}
require("colorizer").setup{}
require("nvim-autopairs").setup{}

require('nvim_comment').setup()
--require("config.gruvbox")
--require("config.base16")
vim.opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.wrap = false
--vim.opt.signcolumn = "yes"
vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}
vim.opt.mouse = ""
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set number")
--vim.cmd("set termguicolors")
vim.g.mapleader = " "
