
function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


return {
  {
    "github/copilot.vim",
    enabled = not file_exists("/etc/zshrc"),
		config = function()
      vim.keymap.set('i', '<M-j>','<Plug>(copilot-next)')
      vim.keymap.set('i', '<M-k>','<Plug>(copilot-previous)')
      vim.keymap.set('i', '<M-l>','<Plug>(copilot-accept-word)')
      vim.keymap.set('i', '<M-;>','<Plug>(copilot-accept-line)')
      vim.keymap.set('n', '<leader>pd',':Copilot disable<CR>')
      vim.keymap.set('n', '<leader>pe',':Copilot enable<CR>')
    end,
  },
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					--{ name = 'nvim_lsp' },
					{ name = "vsnip" }, -- For vsnip users.
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
