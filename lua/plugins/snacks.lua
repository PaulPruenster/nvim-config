return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = {
            auto_hide = { "input" }, -- This line hides the search bar
          },
        },
      },
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
