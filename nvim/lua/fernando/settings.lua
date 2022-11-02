
-- Visuals:
vim.opt.guicursor = 'i:hor20-Cursor/lCursor'
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.colorcolumn = '80'

-- Tabs:
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search:
vim.opt.incsearch = true
vim.opt.smartindent = true

-- Internals:
vim.opt.exrc = true
vim.opt.updatetime = 50
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv( "HOME" ) .. '/.config/nvim/undodir'
vim.opt.undofile = true


vim.opt.scrolloff = 8
vim.opt.errorbells = false
vim.opt.smartcase = true

vim.opt.cmdheight = 2

-- Colorscheme
vim.cmd('colorscheme tokyonight')


