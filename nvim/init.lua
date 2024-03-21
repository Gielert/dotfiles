vim.g.mapleader = ","

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set vim opts
vim.opt.cc = "119"
vim.opt.compatible = false
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.termguicolors = true

-- package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- require plugins folder
require("lazy").setup("plugins")
