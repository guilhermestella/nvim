-- space as <leader>
vim.g.mapleader = " "

-- Nagivate to start and end of current line.
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Yank to system's clipboard.
vim.keymap.set({ "n", "v" }, "y", "\"+y")

-- Give you a search-and-replace prompt for the current word you're on.
vim.keymap.set("n", "<F2>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Disable commands below:
vim.keymap.set("n", "Q", "<nop>")

-- Format current buffer using LSP.
vim.keymap.set("n", "=", function()
    vim.lsp.buf.format()
end)
