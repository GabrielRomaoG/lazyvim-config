return {
    "rcarriga/nvim-dap-ui",
    keys = {
        {
            "<leader>dR",
            function()
                require("dapui").toggle({ reset = true })
            end,
            desc = "Reset DAP UI",
        },
    },
}
