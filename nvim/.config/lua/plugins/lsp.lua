return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = { "lua_ls", "tailwindcss", "vtsls", "taplo", "jsonls", "codebook" },
			automatic_installation = true,
		},
	},
}
