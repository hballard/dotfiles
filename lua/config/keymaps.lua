-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Remap esc key to ii
vim.keymap.set("i", "ii", "<esc>", { noremap = true, silent = true })

--Remap buffer next and previous keys
-- vim.keymap.set("n", "<leader>bn", ":bn<cr>", { noremap = true, silent = true, desc = "Next Buffer" })
-- vim.keymap.set("n", "<leader>bp", ":bp<cr>", { noremap = true, silent = true, desc = "Prev Buffer" })

--Remap for code runner plugin
vim.keymap.set("n", "<leader>cx", ":RunCode<CR>", { noremap = true, silent = false, desc = "Execute Code" })
