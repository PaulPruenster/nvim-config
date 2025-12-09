-- File: ~/.config/nvim/lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 25,
      auto_expand_width = true,
      mappings = {
        -- Override the default 'h' key to close a folder
        ["h"] = "close_node",
        ["<Left>"] = "close_node", -- New: left arrow also closes
        -- Override the default 'l' key to open a file/folder
        ["l"] = "open",
        ["<Right>"] = "open", -- New: right arrow also opens
      },
    },
  },
}
