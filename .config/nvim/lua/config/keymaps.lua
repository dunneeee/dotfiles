local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Force quit all" })

-- Windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-Up>", "<cmd>resize +2<CR>")
map("n", "<C-Down>", "<cmd>resize -2<CR>")
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- Buffers
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>bprev<CR>", { desc = "Prev buffer" })
map("n", "<leader>bd", function()
	local bd = require("mini.bufremove").delete
	if not bd(0, false) then
		return
	end
end, { desc = "Delete buffer" })
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Alternate buffer" })
map("n", "<leader>bo", function()
	local current_buf = vim.api.nvim_get_current_buf()
	local all_bufs = vim.api.nvim_list_bufs()

	for _, buf in ipairs(all_bufs) do
		if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
			local buftype = vim.bo[buf].buftype

			if buftype == "" then
				require("mini.bufremove").delete(buf, false)
			end
		end
	end
end, { desc = "Close other buffers (mini.bufremove)" })

map("n", "<leader>-", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "<leader>\\", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>=", "<C-w>=", { desc = "Equalize window sizes" })

map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Editing
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("x", "<leader>p", '"_dP', { desc = "Paste without losing register" })
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })

-- Terminal
map("n", "<leader>tt", "<cmd>terminal<CR>i", { desc = "Open terminal" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal" })

-- Plugins update
map("n", "<leader>pu", function()
	vim.pack.update()
end, { desc = "Update plugins" })
