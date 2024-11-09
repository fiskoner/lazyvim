-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- set fileformat to unix
vim.opt.fileformat = "unix"
vim.opt.fileformats = { "unix", "dos" }

-- use system clipboard
-- vim.opt.clipboard = "unnamedplus"

-- disable copying deleted text to clipboard
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "D", '"_D')
vim.keymap.set({ "n", "v" }, "x", '"_x')

--session restore
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- disable autoformat
vim.g.autoformat = false
