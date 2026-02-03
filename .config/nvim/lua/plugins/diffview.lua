-- Better git diff support (replaces :Gdiff from vim-fugitive)
-- This is optional - LazyVim has basic git diff, but this is more powerful

return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diff" },
      { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Git File History" },
    },
  },
}
