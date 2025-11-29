return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        list = {
          keys = {
            -- Map single left mouse click to "confirm" (open file)
            ["<LeftRelease>"] = "confirm",

            ["<Right>"] = "confirm",
            ["<Left>"] = "explorer_up",
          },
        },
      },
    },
  },
}
