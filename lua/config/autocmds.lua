-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local Terminal = require("toggleterm.terminal").Terminal
    Terminal:new({
      id = 2,
      cmd = "opencode",
      direction = "float",
      dir = vim.fn.getcwd(),
      hidden = true,
      close_on_exit = true,
      float_opts = {
        border = "curved",
        title_pos = "center",
        winblend = 0,
      },
    }):spawn()
  end,
  once = true,
})
