-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- When starting Neovim with `vim .`, render the dashboard splash screen in the
-- main window instead of an empty directory buffer (`[No Name]`).
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if vim.fn.argc(-1) == 1 and arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      vim.schedule(function()
        local ok, snacks = pcall(require, "snacks")
        if not ok or not snacks.config.dashboard.enabled then
          return
        end
        -- LazyVim swaps in a fresh empty buffer after opening neo-tree for a
        -- directory, so render the splash into that buffer once startup settles.
        local function show()
          local ok, snacks = pcall(require, "snacks")
          if not ok then
            return
          end
          for _, win in ipairs(vim.api.nvim_list_wins()) do
            local rel = vim.api.nvim_win_get_config(win).relative ~= ""
            if not rel and vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "neo-tree" then
              local buf = vim.api.nvim_win_get_buf(win)
              local name = vim.api.nvim_buf_get_name(buf)
              local ft = vim.bo[buf].filetype
              if name == "" and ft ~= "snacks_dashboard" then
                snacks.dashboard.open({ buf = buf, win = win })
                return
              end
            end
          end
        end
        show()
        vim.defer_fn(show, 200)
      end)
    end
  end,
  once = true,
})

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
