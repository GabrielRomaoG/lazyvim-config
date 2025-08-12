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
}
