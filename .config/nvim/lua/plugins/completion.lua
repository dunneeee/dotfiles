return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",

	opts = {
		keymap = {
			preset = "default",
			["<CR>"] = { "accept", "fallback" },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		completion = {
			list = {
				selection = { preselect = true, auto_insert = false },
			},

			menu = {
				draw = {
					columns = { { "kind_icon", gap = 1 }, { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},

			ghost_text = {
				enabled = true,
			},

			accept = { auto_brackets = { enabled = false } },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	config = function()
		vim.lsp.config("*", {
			capabilities = require("blink.cmp").get_lsp_capabilities(),
		})
	end,
}
