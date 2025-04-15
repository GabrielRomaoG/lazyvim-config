vim.api.nvim_create_user_command("Cppath", function(opts)
  local path
  if opts.args == "abs" then
    path = vim.fn.expand("%:p") -- absolute path
  else
    path = vim.fn.expand("%") -- relative path
  end

  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {
  nargs = "?",
  complete = function()
    return { "abs", "rel" }
  end,
})
