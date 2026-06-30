local function aug(name)
	return vim.api.nvim_create_augroup("user_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("TextYankPost", {
	group = aug("yank"),
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 150 })
	end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
	group = aug("last_loc"),
	callback = function(ev)
		local mark = vim.api.nvim_buf_get_mark(ev.buf, '"')
		if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(ev.buf) then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = aug("auto_mkdir"),
	callback = function(ev)
		if ev.match:match("^%w%w+:[\\/][\\/]") then
			return
		end
		vim.fn.mkdir(vim.fn.fnamemodify(ev.match, ":p:h"), "p")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = aug("close_q"),
	pattern = { "help", "lspinfo", "man", "qf", "checkhealth", "oil" },
	callback = function(ev)
		vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = ev.buf })
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	group = aug("terminal"),
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
	end,
})
