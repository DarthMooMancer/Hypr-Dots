local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('norcalli/nvim-colorizer.lua')
Plug('tpope/vim-surround')
Plug('windwp/nvim-autopairs')
Plug('junegunn/fzf')
Plug('neovim/nvim-lspconfig')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('rafamadriz/friendly-snippets')
Plug('rose-pine/neoviM')

vim.call('plug#end')

require("plugins")

local options = {
	shiftwidth = 2,
	expandtab = true,
	softtabstop = 2,
	tabstop = 2,
	wrap = false,
	mouse = "",
  termguicolors = true,
	autoindent = true,
  syntax = "on",
	smartindent = true,
	scrolloff = 8,
	swapfile = false,
	backup = false,
	hlsearch = false,
	incsearch = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", "<C-p>", ":FZF<CR>")
vim.keymap.set('n', "<Leader>bd", ":bd<CR>")


vim.cmd "colorscheme rose-pine"
