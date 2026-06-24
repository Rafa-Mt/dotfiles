require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
map("n", "<leader>md", "<cmd>Markview Toggle<CR>", { desc = "Toggle markdown preview" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
