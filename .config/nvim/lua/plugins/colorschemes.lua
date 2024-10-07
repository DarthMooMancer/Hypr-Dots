return {
  { "sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_foreground    = 'mix' -- material, mix, original
			vim.g.gruvbox_material_background    = "soft" -- hard, medium, soft
			vim.g.gruvbox_material_enable_italic = "1"
			vim.g.gruvbox_material_enable_bold   = "1"
			vim.g.gruvbox_material_statusline_style = "mix" -- material, mix, original
		end
	},
	{ "sainnhe/sonokai", lazy = false, priority = 1000 },
	{ "navarasu/onedark.nvim", lazy = false, priority = 1000 },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{	"olimorris/onedarkpro.nvim", lazy = false, priority = 1000 },
	{ "loctvl842/monokai-pro.nvim", lazy = false, priority = 1000 },
	{ "ferdinandrau/lavish.nvim", lazy = false, priority = 1000 },
	{ "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
	{ "morhetz/gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_contrast = "medium"
		end
	},
}
