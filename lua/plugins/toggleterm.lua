return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- Your configuration options go here
      size = 20,
      -- Set the default open mapping to Ctrl-j
      open_mapping = [[<c-j>]],
      direction = "horizontal", -- or "float", "vertical"
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      -- Add other options as needed
    },
  },
}
