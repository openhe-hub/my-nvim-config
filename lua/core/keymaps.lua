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

-- markdown preview
keymap.set("n", "<leader>mm", ":MarkdownPreview<CR>")

-- format
keymap.set("n", "<leader>f", ":Neoformat<CR>")

-- go to definirion
keymap.set("n", "gd" , "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
keymap.set("n", "gh" , "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
