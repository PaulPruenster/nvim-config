return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- Your configuration options go here
      size = 20,
      direction = "horizontal", -- or "float", "vertical"
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      float_opts = {
        border = "curved",
        title_pos = "center",
        winblend = 0,
      },
      -- Add other options as needed
    },
  },
}
