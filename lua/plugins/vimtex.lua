return {
    {
        "lervag/vimtex",
        opts = false,
        config = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "tex", "plaintex" },
                callback = function()
                    vim.wo.conceallevel = 0
                    vim.wo.concealcursor = ""
                end,
            })
        end,
    },
}
