-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Leader is already set to space by LazyVim

-- Git shortcuts (using LazyGit and Telescope)
-- Note: LazyVim has <leader>gg for LazyGit by default
map("n", "<leader>gs", "<cmd>LazyGit<cr>", { desc = "Git Status (LazyGit)" })
map("n", "<leader>gc", "<cmd>LazyGit<cr>", { desc = "Git Commit (LazyGit)" })
map("n", "<leader>ga", "<cmd>LazyGit<cr>", { desc = "Git Commit -a (LazyGit)" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git Diff" })
map("n", "<leader>gl", "<cmd>Telescope git_commits<cr>", { desc = "Git Log" })

-- Window navigation (LazyVim already has these, but kept for reference)
-- map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
-- map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
-- map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
-- map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
-- These are already set by LazyVim, so you can delete the commented lines

-- Highlight text that goes over 80 columns
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.fn.matchadd("ErrorMsg", [[\%>80v.\+]])
  end,
})
