local options = {
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
	wrap = false,
	mouse = "",
	termguicolors = true,
	scrolloff = 8,
	swapfile = false,
	backup = false,
	hlsearch = false,
	incsearch = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end










