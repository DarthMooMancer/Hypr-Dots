return {
	"folke/which-key.nvim",
	dependencies = {
		{ 'echasnovski/mini.nvim', version = false },
	},
	event = "VeryLazy",
	opts = {
		preset = "modern",
		plugins = {
			marks = true, -- shows a list of your marks on ' and `
			registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
			spelling = {
				suggestions = 20,
			},
			presets = {
				operators = true, -- adds help for operators like d, y, ...
				motions = true, -- adds help for motions
				text_objects = true, -- help for text objects triggered after entering an operator
				windows = true, -- default bindings on <c-w>
				nav = true, -- misc bindings to work with windows
				z = true, -- bindings for folds, spelling and others prefixed with z
				g = true, -- bindings for prefixed with g
			},
		},
		win = {
			no_overlap = true,
			padding = { 0, 0 }, -- extra window padding [top/bottom, right/left]
			title = false,
--			title_pos = "center",
			zindex = 1000,
			bo = {},
			wo = {},
		},
		layout = {
			width = { min = 20 }, -- min and max width of the columns
			spacing = 3, -- spacing between columns
		},
		keys = {
			scroll_down = "<c-d>", -- binding to scroll down inside the popup
			scroll_up = "<c-u>", -- binding to scroll up inside the popup
		},
		expand = 0, -- expand groups when <= n mappings
		show_keys = true, -- show the currently pressed key and its label as a message in the command line
	},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
