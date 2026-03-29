vim.g.mapleader = " "

local options = {
	cmdheight = 0, -- hide command line unless needed
	expandtab = true, -- enable the use of space in tab
	fileencoding = "utf-8", -- file content encoding for the buffer
	fillchars = { eob = " " }, -- disable `~` on nonexistent lines
	history = 100, -- number of commands to remember in a history table
	ignorecase = true, -- case insensitive searching
	infercase = true, -- infer cases in keyword completion
	linebreak = true, -- wrap lines at 'breakat'
	mouse = "a", -- enable mouse support
	number = true, -- show numberline
	preserveindent = true, -- preserve indent structure as much as possible
	relativenumber = true, -- show relative numberline
	shiftwidth = 2, -- number of space inserted for indentation
	showmode = false, -- disable showing modes in command line
	smartcase = true, -- case sensitive searching
	splitbelow = true, -- splitting a new window below the current one
	splitright = true, -- splitting a new window at the right of the current one
	tabstop = 2, -- number of space in a tab
	termguicolors = true, -- enable 24-bit RGB color in the TUI
	title = true, -- set terminal title to the filename and path
	undofile = true, -- enable persistent undo
	writebackup = false, -- disable making a backup before overwriting a file
	swapfile = false,
}
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end
