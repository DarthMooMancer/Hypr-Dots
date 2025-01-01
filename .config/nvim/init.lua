vim.opt.termguicolors = true
require("config.lazy")
-- require('java').setup()
require('lspconfig').jdtls.setup({})
require('lualine').setup()
require("colorizer").setup()
require("config.keymap")
