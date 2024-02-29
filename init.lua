-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Load plugins from "plugins" directory
require("lazy").setup("plugins", {})

-- Make line numbers default
vim.opt.number = true
vim.o.relativenumber = false

-- Show which line your cursor is on
vim.o.cursorlineopt = "number"
vim.o.cursorline = true -- highlight the current line

-- Disable line wrap
vim.o.wrap = false