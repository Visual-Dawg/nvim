vim.api.nvim_exec([[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
  augroup END
]], false)
