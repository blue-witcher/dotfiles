return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'main',
        lazy = false,
        build = ":TSUpdate",
        priority = 999,
        config = function()
            -- require'nvim-treesitter'.install { 'all' } -- seems like a terrible idea
            -- just install them when you want with :TSInstall <parser/all>
        end,
    }
}
