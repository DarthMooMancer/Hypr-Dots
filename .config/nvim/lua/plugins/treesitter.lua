return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "python", "java", "rust", "bash", "c", "cpp"},
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


