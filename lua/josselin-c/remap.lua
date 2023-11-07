vim.g.mapleader = " "

vim.keymap.set("n", "<C-t>", ":tabnew<CR>")
vim.keymap.set("n", "th", ":tabnext -<CR>")
vim.keymap.set("n", "tl", ":tabnext +<CR>")

vim.keymap.set("i", "jj", "<esc>j")
vim.keymap.set("i", "kk", "<esc>k")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
