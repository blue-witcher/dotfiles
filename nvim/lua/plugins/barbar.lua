return {
    { 'romgrk/barbar.nvim', dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', }, -- OPTIONAL: for file icons

    init = function() vim.g.barbar_auto_setup = false
        -- closing window also closes buffer and thus tab
        vim.api.nvim_create_autocmd("WinClosed", {
            callback = function(tbl)
                if vim.api.nvim_buf_is_valid(tbl.buf) then
                    vim.api.nvim_buf_delete(tbl.buf, {})
                end
            end,
            group = vim.api.nvim_create_augroup("barbar_close_buf", {}),
        })
    end,

    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
        icons = {
            gitsigns = {
                added = {enabled = true, icon = '+'},
                changed = {enabled = true, icon = '~'},
                deleted = {enabled = true, icon = '-'},
            },
            button = ' ',
        },
    },},
}
