return {
    "geg2102/nvim-python-repl",
    dependencies = "nvim-treesitter",
    ft = { "python", "lua", "scala" },
    config = function()
        require("nvim-python-repl").setup({
            execute_on_send = true,
            vsplit = false,
        })
    end,
    keys = {
        {
            "<leader>js",
            function()
                require("nvim-python-repl").send_statement_definition()
            end,
            desc = "Send semantic unit to REPL",
            mode = "n",
        },
        {
            "<leader>jv",
            function()
                require("nvim-python-repl").send_visual_to_repl()
            end,
            desc = "Send visual selection to REPL",
            mode = "v",
        },
        {
            "<leader>jb",
            function()
                require("nvim-python-repl").send_buffer_to_repl()
            end,
            desc = "Send entire buffer to REPL",
            mode = "n",
        },
        {
            "<leader>je",
            function()
                require("nvim-python-repl").toggle_execute()
            end,
            desc = "Toggle auto execute on send",
            mode = "n",
        },
        {
            "<leader>jl",
            function()
                require("nvim-python-repl").toggle_vertical()
            end,
            desc = "Toggle vertical/horizontal REPL split",
            mode = "n",
        },
        {
            "<leader>jo",
            function()
                require("nvim-python-repl").open_repl()
            end,
            desc = "Open REPL split",
            mode = "n",
        },
    },
}
