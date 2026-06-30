return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = true,
			debounce = 75,
			keymap = {
				accept = "<A-l>",
				accept_word = false,
				accept_line = false,
				next = "<A-]>",
				prev = "<A-[>",
				dismiss = "<C-]>",
			},
		},
		panel = { enabled = false },
	},
}
