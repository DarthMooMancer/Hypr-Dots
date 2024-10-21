return {
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
				}
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


