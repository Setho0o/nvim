local config = function()
	local custom_gruvbox = require("lualine.themes.gruvbox")
	custom_gruvbox.normal.a.bg = "#fb4934"

	if colorscheme == 1 then
		x = "ayu"
	else
		x = custom_gruvbox
	end
	require("lualine").setup({
		Options = {
			theme = x,
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "dif" },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
