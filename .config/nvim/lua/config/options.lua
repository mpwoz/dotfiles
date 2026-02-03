-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation (2 spaces - LazyVim default, kept for clarity)
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true -- LazyVim default, but you can set to false if you prefer

-- Line behavior
opt.wrap = false
opt.linebreak = true -- Wrap at word boundaries if wrap is enabled
opt.textwidth = 0 -- Don't auto-wrap

-- Scrolling
opt.scrolloff = 1 -- Keep cursor 1 line from edge (LazyVim default is 4)

-- 80 column marker
opt.colorcolumn = "81"

-- Intuitive movement in wrapped lines
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

-- No swap files or backups
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Better diff options
opt.diffopt = "filler,iwhite" -- Ignore whitespace in diffs

-- Folding (disabled by default)
opt.foldenable = false
opt.foldlevel = 0
opt.foldmethod = "syntax"

-- Hidden buffers
opt.hidden = true

-- Bells
opt.errorbells = false
opt.visualbell = false

-- Timeouts
opt.timeout = false -- No timeout for mappings
opt.ttimeout = true -- Timeout for key codes
opt.ttimeoutlen = 100

-- Virtual edit for visual block mode
opt.virtualedit = "block"

-- Markdown file type
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.md",
  callback = function()
    vim.bo.filetype = "markdown"
    vim.wo.wrap = true
    vim.bo.textwidth = 0
  end,
})
