vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<A-Down>", ":m +1<cr>")
vim.keymap.set("n", "<A-Up>", ":m -2<cr>")

vim.keymap.set("n","<leader>v", "<C-v>")

