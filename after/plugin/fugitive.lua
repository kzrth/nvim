vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gbl", "<cmd>Git blame<CR>")

vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
