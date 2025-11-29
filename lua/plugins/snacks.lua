return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        list = {
          keys = {
            -- Map single left mouse click to "confirm" (open file)
            ["<LeftRelease>"] = "confirm",
            -- Optional: You can also remove the double-click mapping if you wish
            -- ["<2-LeftMouse>"] = nil,
          },
        },
      },
    },
  },
}
