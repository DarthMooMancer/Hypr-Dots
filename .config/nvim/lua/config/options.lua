-- vim.opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
	wrap = false,
	mouse = "",
	termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
