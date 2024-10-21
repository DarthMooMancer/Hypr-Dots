return {
	"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"},
	"numToStr/Comment.nvim",
	"norcalli/nvim-colorizer.lua",
	"kylechui/nvim-surround",
	{ "catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			vim.cmd "colorscheme catppuccin-frappe"
		end
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = { check_ts = true }},
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
        highlight = { enable = true, additional_vim_regex_highlighting = false },
        indent = { enable = true },
      })
    end
  },
	{ 'neovim/nvim-lspconfig',
		dependencies  = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},

		config = function ()
			require('mason').setup()
			require('mason-lspconfig').setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"rust_analyzer",
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup{}
					end,
				},
			})
		end
	},
	{	"mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				python = { "pylint" },
			}

			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
