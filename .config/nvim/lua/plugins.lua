-- lsp-config setup
--
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim"
        }
      }
    }
  }
}


local cmp = require("cmp")
local ls = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({ snippet = { expand = function(args) ls.lsp_expand(args.body) end },
  mapping = cmp.mapping.preset.insert({
    ["<C-x>"] = cmp.mapping.confirm({ select = true }),
    ["<C-k>"] = cmp.mapping(function(fallback)
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "luasnip" },
    { name = "nvim_lsp" },
  })
})


require('nvim-autopairs').setup {
    check_ts = true,
}


require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "python", "rust" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}
