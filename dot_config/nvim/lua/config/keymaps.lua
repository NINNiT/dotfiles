-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnext<CR>", { silent = true, desc = "Next tab" })
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabprevious<CR>", { silent = true, desc = "Previous tab" })
vim.keymap.set("n", "<leader>ae", vim.cmd.SopsEncrypt, { desc = "Encrypt File using sops" })
vim.keymap.set("n", "<leader>ad", vim.cmd.SopsDecrypt, { desc = "Decrypt File usign sops" })
