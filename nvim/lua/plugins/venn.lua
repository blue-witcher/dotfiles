return {
    {
        'jbyuki/venn.nvim',
        config = function()
            vim.keymap.set({''}, '<leader>v', ':set virtualedit=all<CR>', { desc = 'Enter virtualedit mode' })
            vim.keymap.set({''}, '<leader>V', ':set virtualedit=<CR>', { desc = 'Leave virtualedit mode' })
            vim.keymap.set({'x'}, '<leader>l', ':VBox<CR>', { desc = 'Draw a line/box' })
        end
    },
}
