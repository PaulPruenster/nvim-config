-- return {
--   -- Add the Sonokai theme plugin
--   {
--     "sainnhe/sonokai",
--     init = function()
--       -- Set the variant before the theme is loaded
--       vim.g.sonokai_style = "andromeda"
--     end,
--   },
--   -- Configure LazyVim to load this colorscheme
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "sonokai",
--     },
--   },
-- }

return {
  {
    "khoido2003/monokai-v2.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("monokai-v2").setup({
        filter = "spectrum",
        terminal_colors = true,
      })
      vim.cmd("colorscheme monokai-v2")
    end,
  },
}
