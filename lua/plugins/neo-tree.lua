return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
			},
			event_handlers = {
				{
					event = "neo_tree_buffer_enter",
					handler = function()
						vim.opt.number = true
						vim.opt.relativenumber = true
					end,
				},
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", {})
	end,
}
