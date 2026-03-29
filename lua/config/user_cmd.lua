function docCmd(lower, upper)
  vim.api.nvim_create_user_command(upper,
    function()
      vim.cmd(":e ~/docs/" .. lower)
    end,
    {})
end

function plugCmd(name, cmd)
  vim.api.nvim_create_user_command(name,
    function()
      vim.cmd(cmd)
    end,
    {})
end

return {
  plugCmd("Mark", ":Markview toggle"),
  plugCmd("Color", ":ColorizerToggle"),

  docCmd("", "Docs"),
  docCmd("tasks.md", "Tasks"),
  docCmd("nvim.md", "Nvim"),
  docCmd("keyd.md", "Keyd"),
  docCmd("vm.md", "VM"),
  docCmd("go.md", "Go"),
  docCmd("markdown.md", "Markdown"),

  vim.cmd("cnoreabbrev ayu Ayu"),
  vim.cmd("cnoreabbrev gruv Gruvbox"),
  vim.cmd("cnoreabbrev kana Kanagawa"),
  vim.cmd("cnoreabbrev oil Oil"),
  vim.cmd("cnoreabbrev mark Mark"), --should prolly add a keybind aswell
  vim.cmd("cnoreabbrev color Color"),
  vim.cmd("cnoreabbrev zen ZenMode"),
  vim.cmd("cnoreabbrev lazy Lazy"),
  vim.cmd("cnoreabbrev mason Mason"),


  vim.cmd("cnoreabbrev docs Docs"),
  vim.cmd("cnoreabbrev nvim Nvim"),
  vim.cmd("cnoreabbrev keyd Keyd"),
  vim.cmd("cnoreabbrev vm Vm"),
  vim.cmd("cnoreabbrev go Go"),
  vim.cmd("cnoreabbrev markdown Markdown"),
}
