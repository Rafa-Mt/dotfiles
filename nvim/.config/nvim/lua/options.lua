require "nvchad.options"

vim.g.lazygit_binary_path = vim.fn.expand "~/.local/bin/lazygit"

-- Load local overrides if they exist (WSL clipboard, etc.)
local ok, _ = pcall(dofile, vim.fn.stdpath("config") .. "/lua/local.lua")

