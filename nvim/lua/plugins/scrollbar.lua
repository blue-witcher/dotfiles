return {
    { "petertriho/nvim-scrollbar", name = 'nvim-scrollbar',
    init = function()
        require("scrollbar").setup({
            handle = {
                blend = 0,
                -- color = "#",
            },
            handlers = {
                gitsigns = false, -- Requires gitsigns
                cursor = false,
            },
        })
    end }
}
