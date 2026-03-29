colorscheme = 2
theme = {
	"ayu",
	"gruvbox",
	"kanagawa-lotus",
}

local ok, _ = pcall(vim.cmd, "colorscheme " .. theme[colorscheme])
if not ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

--changing the completion popup to match the bg color so it doesnt look like shit
--also adding a global theme varable to turn off some of the features that dont mesh well with kana and ayu
if vim.g.colors_name == "gruvbox" then
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { fg = "#0c0c0c", bg = "#0c0c0c" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#0c0c0c", bg = "#0c0c0c" })
end

if vim.g.colors_name == "kanagawa" then
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { fg = "#f2ecbc", bg = "#f2ecbc" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#f2ecbc", bg = "#f2ecbc" })
end

vim.api.nvim_create_user_command("Ayu", function()
	vim.cmd("colorscheme ayu")
end, {})

vim.api.nvim_create_user_command("Gruvbox", function()
	vim.cmd("colorscheme gruvbox")
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { fg = "#0c0c0c", bg = "#0c0c0c" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#0c0c0c", bg = "#0c0c0c" })
end, {})

vim.api.nvim_create_user_command("Kanagawa", function()
	vim.cmd("colorscheme kanagawa-lotus")
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { fg = "#f2ecbc", bg = "#f2ecbc" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#f2ecbc", bg = "#f2ecbc" })
end, {})
