local ls = require("luasnip")
return {
    "L3MON4D3/LuaSnip",
    --   lazy = false,
    config = function()
        require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
        ls.config.setup({
            update_events = "TextChanged,TextChangedI",
            enable_autosnippets = true,
        })
        ls.filetype_extend("markdown", { "tex" })
    end,
    opts = function(_, opts)
        vim.keymap.set({ "i", "s" }, "<Tab>", function()
            if ls.jumpable(1) then
                return "<Plug>luasnip-jump-next"
            else
                return "<Tab>"
            end
        end, { expr = true })

        vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
            if ls.jumpable(-1) then
                return "<Plug>luasnip-jump-prev"
            else
                return "<S-Tab>"
            end
        end, { expr = true })

        return opts
    end,
}
