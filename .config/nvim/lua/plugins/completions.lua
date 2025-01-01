return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-x>"] = cmp.mapping.confirm({ select = true }),
          ['<C-k>'] = cmp.mapping(
            function(fallback)
              if vim.snippet.active({ direction = 1 }) then
                vim.snippet.jump(1)
              else
                fallback()
              end
            end, { 'i', 's' }
          ),
        }),
        sources = cmp.config.sources({
          { name = 'luasnip' },
          { name = "buffer" },
          { name = "path" },
          { name = "nvim_lsp" },
        })
      })
    end,
  }
}
