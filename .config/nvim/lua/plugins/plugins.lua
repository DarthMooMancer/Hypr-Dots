return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "numToStr/Comment.nvim" },
	{ "norcalli/nvim-colorizer.lua" },
	-- Dependencies For Plugins
	{	"nvim-tree/nvim-web-devicons" },
  { 'nvim-lua/plenary.nvim' },
	{ 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'j-hui/fidget.nvim' },
  { 'folke/neodev.nvim' },

	-- Main Plugins
	{ "lukas-reineke/indent-blankline.nvim",
		event = 'VeryLazy',
		main = "ibl",
		opts = {
			enabled = true,
			indent = {
				char = '|',
			},
		},
	},
	{ 'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				theme = "catppuccin", -- "auto, tokyonight, catppuccin, codedark, nord" 
				section_separators = { left = '', right = '' },
				component_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
		}
	},
}

