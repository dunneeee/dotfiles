local sev = vim.diagnostic.severity

vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = false,
	virtual_text = {
		spacing = 4,
		source = "if_many",
		prefix = "●",
		severity = { min = sev.WARN },
	},
	underline = { severity = { min = sev.WARN } },
	signs = {
		text = {
			[sev.ERROR] = " ",
			[sev.WARN] = " ",
			[sev.INFO] = " ",
			[sev.HINT] = "󰌶 ",
		},
	},
	float = {
		border = "rounded",
		source = "if_many",
		max_width = 80,
	},
})

vim.keymap.set("n", "<leader>lD", function()
	local is_enabled = vim.diagnostic.is_enabled()
	vim.diagnostic.enable(not is_enabled)
	vim.notify("Diagnostics " .. (not is_enabled and "on" or "off"))
end, { desc = "Toggle diagnostics" })
