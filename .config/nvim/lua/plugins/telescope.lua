return {
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
    config = function()
			require "telescope".setup {
				defaults = {
					layout_strategy = "vertical",
					layout_config = {
						height = vim.o.lines, -- maximally available lines
						width = vim.o.columns, -- maximally available columns
						prompt_position = "top",
						preview_height = 0.6, -- 60% of available lines
					},
				},
			}
      local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    end
  },
	{ 'nvim-telescope/telescope-ui-select.nvim',
		config = function ()
			require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {
					}
				}
			}
		})
		require("telescope").load_extension("ui-select")
		end
	},
	{ "nvim-telescope/telescope-file-browser.nvim",
		config = function ()
			require("telescope").setup {
				extensions = {
					file_browser = {
						theme = "ivy",
					}
				}
			}
			vim.keymap.set("n", "<C-n>", ":Telescope file_browser<CR>", { silent = true})
		require("telescope").load_extension "file_browser"
		end
	},
}
