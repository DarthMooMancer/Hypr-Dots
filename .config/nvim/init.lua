vim.opt.termguicolors = true
require("config.lazy")
require("config.keymap")
require("colorizer").setup{}
require("nvim-autopairs").setup{}

vim.opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.wrap = false

vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}
vim.opt.mouse = ""
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "colorscheme catppuccin-frappe"
vim.g.mapleader = " "
