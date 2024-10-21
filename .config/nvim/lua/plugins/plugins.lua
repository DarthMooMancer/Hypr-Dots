return {
	"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"},
	{ "catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			vim.cmd "colorscheme catppuccin-frappe"
		end
	},
	"numToStr/Comment.nvim",
	"norcalli/nvim-colorizer.lua",
	{ "windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true,
		}
	},
	"kylechui/nvim-surround",
  { "hrsh7th/nvim-cmp",
		dependencies = {
			"cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
	    "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
		},
    config = function()
			require "config.completions"
		end
  },
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "python", "rust"},
        auto_install = true,
        highlight = {
					enable = true,
				  additional_vim_regex_highlighting = false
				},
        indent = { enable = true },
      })
    end
  }
}
