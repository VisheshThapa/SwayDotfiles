vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
vim.wo.relativenumber = true
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

vim.opt.clipboard = "unnamedplus"

vim.opt.matchpairs:append("<:>")
