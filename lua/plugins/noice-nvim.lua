return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			routes = {
				{
					view = "notify",
					filter = { event = "msg_showmode" },
				},
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function(_, opts)
			-- notify setup
			require("notify").setup({
				background_colour = "#193549",
			})

			-- noice setup
			require("noice").setup(opts)
		end,
	},
}
