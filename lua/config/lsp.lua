return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"gopls",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function()
			local cap = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = cap,
				diagnostics = { disable = { "missing-fields" } },
			})
			vim.lsp.config("gopls", { capabilities = cap })
		end,
	},
}
