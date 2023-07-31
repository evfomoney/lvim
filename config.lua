-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

--------------- keymap ---------------------
lvim.keys.insert_mode[",a"] = "<ESC>"

-- neovim
lvim.keys.normal_mode["s"] = ""
lvim.keys.normal_mode["sh"] = ":split<CR>"
lvim.keys.normal_mode["sv"] = ":vsplit<CR>"


--------------- basic -----------------------
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true

vim.wo.signcolumn = "yes"

vim.wo.colorcolumn = "80"

vim.o.shiftround = true
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.hlsearch = false

vim.o.incsearch = true

vim.o.cmdheight = 2

vim.o.autoread = true
vim.bo.autoread = true

vim.wo.wrap = false

vim.o.whichwrap = "<,>,[,]"

vim.o.hidden = true

vim.o.mouse = "a"
vim.opt.clipboard:append("unnamedplus")

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.updatetime = 300

vim.o.timeoutlen = 500

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- vim.o.background = "dark" -- is closed to colorscheme : so this item is put in colorscheme.lua
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.list = true
vim.o.listchars = "space:·"

vim.o.wildmenu = true

vim.o.shortmess = vim.o.shortmess .. "c"

vim.o.pumheight = 10

vim.o.showtabline = 2

vim.o.showmode = false


-------------------- option:re ------------------------
-- colorscheme
lvim.colorscheme = "gruvbox"
vim.o.background = "dark"

-- nvimtree
lvim.builtin.nvimtree.setup.view.side = "right"

-- lualine
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.theme = "codedark"


lvim.builtin.lualine.sections.lualine_c = { 'python_env', 'diff', 'diagnostics' }

lvim.builtin.lualine.sections.lualine_x = { 'filesize', 'encoding'}

-- bufferline
lvim.builtin.bufferline.options.always_show_bufferline = true
lvim.builtin.bufferline.options.buffer_close_icon = ""
lvim.builtin.bufferline.options.show_buffer_close_icons = false

-- breadcrums
lvim.builtin.breadcrumbs.options.separator = " > "

-----------------  plugins:re ----------------------
-- builtin_plugins : bufferline, cmp, lir, telescope, lazy, alpha, autopair, 
-----  bradcrumbs, comment, dap, gitsigns, illuminate, indentlines, mason, 
-----  nvimtree, project, terminal, tokyonight, treesitter, which-key,  
lvim.plugins = {
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
}
