-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "i", "n", "v" }, "<C-C>", "<esc>", { desc = "Make Ctrl+C behave exactly like escape." })

-- buffers
vim.keymap.set("n", "<leader>bc", "<cmd>Cppath<CR>", { desc = "Copy current buffer relative path." })
vim.keymap.set("n", "<leader>bC", "<cmd>Cppath abs<CR>", { desc = "Copy current buffer absolute path." })

-- luasnip
local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<c-o>", function()
    if ls.expandable() then
        ls.expand()
    elseif ls.expand_or_locally_jumpable() then
        ls.expand_or_jump()
    end
end, { desc = "Expand snippet" })

-- LSP

vim.keymap.set("n", "<leader>cp", "<cmd>LspRestart<cr>", { desc = "LSP: Restart", silent = true })
