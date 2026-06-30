return {
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		opts = {
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "┆" },
			},
			current_line_blame = false,
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns
				local map = function(mode, lhs, rhs, desc)
					vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
				end

				map("n", "]h", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c", bang = true })
					else
						gs.next_hunk()
					end
				end, "Next hunk")
				map("n", "[h", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gs.prev_hunk()
					end
				end, "Prev hunk")

				map({ "n", "v" }, "<leader>ghs", gs.stage_hunk, "Stage hunk")
				map({ "n", "v" }, "<leader>ghr", gs.reset_hunk, "Reset hunk")
				map("n", "<leader>ghS", gs.stage_buffer, "Stage buffer")
				map("n", "<leader>ghR", gs.reset_buffer, "Reset buffer")
				map("n", "<leader>ghu", gs.undo_stage_hunk, "Undo stage hunk")
				map("n", "<leader>ghp", gs.preview_hunk, "Preview hunk")
				map("n", "<leader>ghd", gs.diffthis, "Diff this")
				map("n", "<leader>ghb", function()
					gs.blame_line({ full = true })
				end, "Blame line")
				map("n", "<leader>ghB", gs.toggle_current_line_blame, "Toggle blame")

				map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Select hunk")
			end,
		},
	},

	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gg", "<cmd>Git<CR>", desc = "Git status (fugitive)" },
			{ "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff split" },
			{ "<leader>gl", "<cmd>Git log --oneline<CR>", desc = "Git log" },
			{ "<leader>gP", "<cmd>Git push<CR>", desc = "Git push" },
			{ "<leader>gp", "<cmd>Git pull<CR>", desc = "Git pull" },
		},
	},
}
