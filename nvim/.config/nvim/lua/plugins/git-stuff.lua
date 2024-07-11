return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
			vim.keymap.set("n", "<leader>gs", ":Gitsigns toggle_signs<CR>", {})
			vim.keymap.set("n", "<leader>gh", ":Gitsigns toggle_linehl<CR>", {})
			vim.keymap.set("n", "<leader>gl", ":Gitsigns setloclist<CR>", {})
		end,
	},
}
