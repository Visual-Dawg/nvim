-- Based on ThePrimeagen
vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)

-- Move lines around in visual mode like VS Code alt+arrow up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--  Normal J, concat lines, but cursor stays in place
--  map("n", "J", "mzJ`z")

--  Half page jumping, but cursor stays in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

--  Like normal n / N, but cursor stays in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Paste but keep pasted text in regiser
map("x", "<leader>p", [["_dP]])
-- Delete but do not override regiser
map({"n", "v"}, "<leader>d", [["_d]])

--  Yank in the system clipboard
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Replace all instances of the selected text
-- map('v', '<leader><leader>f', [["hy:%s#<C-r>h##g<left><left><left>]])

-- map('n', '<leader>i', function()
--     print("xoxo")

-- end)
if vim.g.vscode then

    -- Toggle comments with the native VS Code API
    map('x', 'gc', '<Plug>VSCodeCommentary')
    map('n', 'gc', '<Plug>VSCodeCommentary')
    map('o', 'gc', '<Plug>VSCodeCommentary')
    map('n', 'gcc', '<Plug>VSCodeCommentaryLine')

    -- Toggle quick open with tab
    map('n', '<tab>', '[[<Cmd>call VSCodeCall("workbench.action.quickOpen")<CR>]]')
end

