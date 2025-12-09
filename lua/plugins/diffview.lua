return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>gs", "<cmd>DiffviewOpen<cr>", mode = "n" },
      { "<leader>gS", "<cmd>DiffviewClose<cr>", mode = "n" },
    },
    config = true,
    lazy = false,
  },
}
