vim.g.mapleader = " "
--File explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

--copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--replace all words under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--Move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

--Source the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--Keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Make it rain
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--Format file with Prettier
vim.keymap.set("n", "<C-a>", vim.cmd.Prettier)

--Save current file
vim.keymap.set("n", "zz", "<Cmd>update<cr>")

--Tabs and buffers
vim.keymap.set('n', '<leader>nn', '<Cmd>tabnew<CR>')

--Switch to last buffer
vim.keymap.set('n', '<leader>bb', ' <c-^><CR>')
