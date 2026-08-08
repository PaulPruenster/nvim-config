-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Select entire file with Ctrl+A
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select entire file" })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select entire file" })

vim.keymap.set("n", "<leader>q", ":qa<CR>", { desc = "Quit All" })

-- Map Ctrl-j to toggle the horizontal terminal (id 1)
vim.keymap.set("n", "<C-j>", "<cmd>1ToggleTerm<CR>", { desc = "Toggle terminal", noremap = true, silent = true })
-- Optional: Also make it work in insert mode
vim.keymap.set("i", "<C-j>", "<Esc><cmd>1ToggleTerm<CR>", { desc = "Toggle terminal", noremap = true, silent = true })
-- Close the terminal while inside it
vim.keymap.set("t", "<C-j>", "<cmd>ToggleTerm<CR>", { desc = "Close terminal", noremap = true, silent = true })

-- Toggle floating terminal (like a lazygit popup), keeps its state
vim.keymap.set("n", "<C-k>", "<cmd>2ToggleTerm direction=float<CR>", { desc = "Toggle float terminal", noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", "<cmd>2ToggleTerm<CR>", { desc = "Toggle float terminal", noremap = true, silent = true })

-- These are 'global' keymaps, active in Normal, Insert, and Terminal modes.
vim.keymap.set({ "n", "i", "t" }, "<A-s>", "<C-w>h", { desc = "Focus window left" })
vim.keymap.set({ "n", "i", "t" }, "<A-f>", "<C-w>l", { desc = "Focus window left" })

vim.keymap.set({ "n", "i", "t" }, "<A-e>", "<C-w>k", { desc = "Focus window up" })
vim.keymap.set({ "n", "i", "t" }, "<A-d>", "<C-w>j", { desc = "Focus window down" })
