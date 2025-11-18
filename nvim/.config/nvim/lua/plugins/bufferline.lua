return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    opts = {},
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
        { "<leader>bh", ":BufferLineCyclePrev<CR>", silent = true },
        { "<leader>bl", ":BufferLineCycleNext<CR>", silent = true },
        { "<leader>bh", ":BufferLineCyclePick<CR>", silent = true },
        { "<leader>bh", ":bdelete<CR>", silent = true },
    },
    lazy = false,
}
