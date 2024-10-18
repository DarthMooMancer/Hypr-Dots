return {
	{ 'neovim/nvim-lspconfig',
		event = 'VeryLazy',
		config = function ()
			require('mason').setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
			require('mason-lspconfig').setup({

				ensure_installed = {
					'lua_ls',
					'pyright',
				}
			})

			local lspconfig = require('lspconfig')
			local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
			-- Call setup on each LSP server
			require('mason-lspconfig').setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = lsp_capabilities,
					})
				end
			})

			-- Lua LSP settings
			lspconfig.lua_ls.setup {
				settings = {
					Lua = {
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = {'vim'},
						},
					},
				},
			}

			-- Globally configure all LSP floating preview popups (like hover, signature help, etc)
			--local open_floating_preview = vim.lsp.util.open_floating_preview
			function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
				opts = opts or {}
				opts.border = opts.border or "rounded" -- Set border to rounded
				return vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
			end

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


