vim.g.mapleader = " "

local keymap = vim.keymap

-- split window
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- buffer line
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
