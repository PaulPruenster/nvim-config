-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Select entire file with Ctrl+A
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select entire file" })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select entire file" })

vim.keymap.set("n", "<leader>q", ":qa<CR>", { desc = "Quit All" })
