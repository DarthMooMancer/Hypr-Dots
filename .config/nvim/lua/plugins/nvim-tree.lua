return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
		"antosha417/nvim-lsp-file-operations"
  },
  config = function()
    require("nvim-tree").setup {
			view = {
				width = 30,
			},
		}
  end,
}
