local options = {
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










