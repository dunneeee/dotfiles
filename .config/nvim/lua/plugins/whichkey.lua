return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		win = {
			border = "rounded",
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)

		wk.add({
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gh", group = "Git hunks" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>lw", group = "LSP workspace" },
			{ "<leader>b", group = "Buffers" },
			{ "<leader>p", group = "Plugins" },
			{ "<leader>t", group = "Run / Test" },
			{ "<leader>c", group = "Code" },
		})
	end,
}
