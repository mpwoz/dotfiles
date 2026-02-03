-- Auto-strip trailing whitespace on save
-- This replaces vim-better-whitespace functionality

return {
  {
    "ntpeters/vim-better-whitespace",
    event = "BufReadPre",
    config = function()
      -- Strip whitespace on save for all files
      vim.g.strip_whitespace_on_save = 1
      
      -- Don't ask for confirmation
      vim.g.strip_whitespace_confirm = 0
      
      -- Strip empty lines at end of file
      vim.g.strip_whitelines_at_eof = 1
      
      -- Highlight trailing whitespace
      vim.g.better_whitespace_enabled = 1
    end,
  },
}
