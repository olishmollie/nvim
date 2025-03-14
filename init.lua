-- Disable netrw in favor of neotree.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.localleader = "\\"

vim.g.format_on_save = true
vim.g.trim_trailing_whitespace = true

vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.exrc = true
vim.opt.number = true;
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Bootstrap plugin manager.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
    change_detection = { enabled = false }
})
require("config")

vim.cmd.colorscheme("gruvbox-material")
