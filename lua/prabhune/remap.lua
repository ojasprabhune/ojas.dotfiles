-- click "v", then "J" or "K" to move line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- click spacebar then "s" to change all instances of the word the cursor is above
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace", silent = true })

-- general commands
vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeToggle, { desc = "File explorer" })
vim.keymap.set("n", "<C-j>", "<C-w>w", { desc = "Editor and explorer navigation" })

vim.keymap.set("n", "<leader>l", vim.cmd.Lazy, { desc = "Lazy" })
vim.keymap.set("n", "<leader>m", vim.cmd.Mason, { desc = "Mason" })
vim.keymap.set("n", "<leader>dd", "<C-o>", { desc = "Back", noremap = true, silent = true })
vim.keymap.set("n", "<leader>pp", "=ap", { desc = "Back", noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader>ca", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
