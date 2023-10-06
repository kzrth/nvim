vim.g.mapleader = " "

-- Exit from the file to the explore 
vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

-- Move selected up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste without buffer replacement
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to the clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y"]])
vim.keymap.set("n", "<leader>Y", [["+Y"]])

