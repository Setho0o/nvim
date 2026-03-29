return {
	{ -- tree sitter fails on 11.6 but idfc nightly aint working for my config so this prolly aint doing shit rn
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "go", "c", "lua" },
			indent = { enable = true },
		},
	},
	{
		"stevearc/oil.nvim", --directory handling
		opts = {
			show_hidden = true,
		},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"OXY2DEV/markview.nvim", --fancy markdown files
		lazy = false,
		-- Completion for `blink.cmp`
		dependencies = { "saghen/blink.cmp" },
	},
	{
		"catgoose/nvim-colorizer.lua", --Colors hex codes
		event = "BufReadPre",
		opts = {},
	},
	{
		"folke/zen-mode.nvim", --no more distractions
		opts = {
			window = {
				width = 1, -- width of the Zen window
				height = 1, -- height of the Zen window
				options = {
					number = false, -- disable number column
					relativenumber = false, -- disable relative numbers
				},
			},
			plugins = {
				--could be cool to disable dianostics
				options = {
					enabled = true,
					ruler = false,
					showcmd = false, -- disables the command in the last line of the screen
					laststatus = 0, -- turn off the statusline in zen mode
				},
			},
		},
	},
	{
		"chrisgrieser/nvim-origami", --folds...
		--they open after formating with most lsps this aint a origami issue according to the docs
		event = "VeryLazy",
		opts = {}, -- required even when using default config

		-- recommended: disable vim's auto-folding
		init = function()
			vim.opt.foldlevel = 99
			vim.opt.foldlevelstart = 99
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		-- This will provide type hinting with LuaLS
		---@module "conform"
		---@type conform.setupOpts
		opts = {
			-- Define your formatters
			formatters_by_ft = {
				lua = { "stylua" },
			},
			-- Set default options
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = { timeout_ms = 500 },
			formatters = {
				shfmt = {
					append_args = { "-i", "2" },
				},
			},
		},
	},
}
