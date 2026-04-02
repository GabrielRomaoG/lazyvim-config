-- Reset and toggle DAP UI
vim.keymap.set("n", "<leader>dR", function()
    require("dapui").toggle({ reset = true })
end, { desc = "Reset DAP UI" })
