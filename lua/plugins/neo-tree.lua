-- https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/defaults.lua

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

        ["Z"] = "expand_all_subnodes",
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- This makes filtered items (like hidden files) visible
        show_hidden_count = true, -- Shows count of hidden items in the status bar
        hide_dotfiles = true, -- Set to false to show dotfiles (e.g., .gitignore)
        hide_gitignored = false, -- Recommended to keep gitignored files hidden
        hide_by_name = {
          -- You can hide specific non-dot files/folders here if needed
          "node_modules",
        },
      },
    },
  },
}
