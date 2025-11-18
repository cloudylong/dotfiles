-- ~~~~~~~~~~~~~~~~~~~~~~ --
--          行号          --
-- ~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.number = true           -- 显示行号
vim.opt.relativenumber = true   -- 显示相对行号

-- ~~~~~~~~~~~~~~~~~~~~~~ --
--          高亮          --
-- ~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.cursorline = true       -- 高亮当前行

-- ~~~~~~~~~~~~~~~~~~~~~~ --
--          空格          --
-- ~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.expandtab = true        -- 将 Tab 转换成空格
vim.opt.tabstop = 4             -- Tab 等于 4 个空格
vim.opt.shiftwidth = 0          -- 取消 Neovim 默认的缩进宽度

-- ~~~~~~~~~~~~~~~~~~~~~~ --
--          窗口          --
-- ~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.splitright = true       -- 垂直分割窗口时，新的窗口显示在右侧
vim.opt.splitbelow = true       -- 水平分割窗口时，新的窗口显示在下方

-- ~~~~~~~~~~~~~~~~~~~~~~~~ --
--          寄存器          --
-- ~~~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.clipboard = "unnamedplus"   -- 默认使用系统剪切板

-- ~~~~~~~~~~~~~~~~~~~~~~ --
--          其他          --
-- ~~~~~~~~~~~~~~~~~~~~~~ --

vim.opt.autoread = true         -- 打开的文件被外部程序修改后,自动加载
vim.opt.showmode = false
