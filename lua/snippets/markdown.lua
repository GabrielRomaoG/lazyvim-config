local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Inline math: $ ... $
return {
    ls.add_snippets("markdown", {
        s("$", {
            t({ "$" }),
            i(1),
            t({ "$" }),
        }),
        s("$$", {
            t({ "$$", "\t" }),
            i(1),
            t({ "", "$$" }),
        }),
    }),
}
