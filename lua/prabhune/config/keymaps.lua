-- click "v", then "J" or "K" to move line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line up

-- click spacebar then "s" to change all instances of the word the cursor is above
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace", silent = true })

-- general commands
vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeToggle, { desc = "File explorer" })        -- toggle file explorer
vim.keymap.set("n", "<C-j>", "<C-w>w", { desc = "Editor and explorer navigation" })          -- switch between editor and file explorer

vim.keymap.set("n", "<leader>l", vim.cmd.Lazy, { desc = "Lazy" })                            -- lazy.nvim plugin manager
vim.keymap.set("n", "<leader>m", vim.cmd.Mason, { desc = "Mason" })                          -- mason.nvim lsp package manager
vim.keymap.set("n", "<leader>dd", "<C-o>", { desc = "Back", noremap = true, silent = true }) -- go back to previous file

-- code actions
vim.keymap.set({ "n", "x" }, "<leader>ca", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true })

-- make it rain
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
