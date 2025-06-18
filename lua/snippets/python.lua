local ls = require("luasnip")
local extras = require("luasnip.extras")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = extras.rep
local sn = ls.snippet_node
local r = ls.restore_node
local f = ls.function_node
local d = ls.dynamic_node

local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

return {
    ls.add_snippets("python", {
        -- Begin question
        s({ trig = "docstr", name = "docstring" }, {
            t({ '"""', "" }),
            i(1),
            t({ "", '"""' }),
        }),
    }),
}
