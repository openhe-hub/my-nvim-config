local opt = vim.opt

-- basic options
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- warp
opt.wrap = false

-- cursor
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- enable clipboard 
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- terminal gui
opt.termguicolors = true
opt.signcolumn = "yes"

-- theme
vim.cmd[[colorscheme gruvbox]]
