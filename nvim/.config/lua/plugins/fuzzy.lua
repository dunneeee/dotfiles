return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	---@module "fzf-lua"
	---@diagnostic disable: missing-fields
	opts = {
		"telescope",
		winopts = {
			height = 0.85,
			width = 0.85,
			border = "rounded",
			preview = { border = "border" },
		},
	},
	---@diagnostic enable: missing-fields
	keys = {
		-- Files & search
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "Find files",
		},
		{
			"<leader><space>",
			function()
				require("fzf-lua").files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Live grep",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "Grep word under cursor",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "Recent files",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").help_tags()
			end,
			desc = "Help tags",
		},

		-- LSP
		{
			"<leader>fs",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "LSP symbols (file)",
		},
		{
			"<leader>fS",
			function()
				require("fzf-lua").lsp_workspace_symbols()
			end,
			desc = "LSP symbols (workspace)",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").lsp_references()
			end,
			desc = "LSP references",
		},
		{
			"<leader>fd",
			function()
				require("fzf-lua").lsp_definitions()
			end,
			desc = "LSP definitions",
		},

		-- Git
		{
			"<leader>gf",
			function()
				require("fzf-lua").git_files()
			end,
			desc = "Git files",
		},
		{
			"<leader>gc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "Git commits",
		},
		{
			"<leader>gs",
			function()
				require("fzf-lua").git_status()
			end,
			desc = "Git status",
		},

		-- Misc
		{
			"<leader>f:",
			function()
				require("fzf-lua").command_history()
			end,
			desc = "Command history",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "Keymaps",
		},
		{ "<leader>ft", "<cmd>TodoFzfLua<CR>", desc = "TODOs" },
	},
}
