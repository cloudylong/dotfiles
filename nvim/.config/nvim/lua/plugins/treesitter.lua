return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    event = "VeryLazy",
    opts = {
        ensure_installed = { "lua" },
        highlight = { enable = true },
    }
}
