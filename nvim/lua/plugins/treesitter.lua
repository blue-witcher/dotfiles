return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'main',
        lazy = false,
        build = ":TSUpdate",
        priority = 999,
        config = function()
            require'nvim-treesitter'.install { 'all' }
        end,
    }
}
