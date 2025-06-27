return {

    -- { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
    --     require("catppuccin").setup({
    --         flavour = "mocha",
    --         transparent_background = false,
    --         color_overrides = {
    --             mocha = {
    --                 base = "#0a0a10",
    --             },
    --         },
    --         integrations = {
    --             gitsigns = {enabled = false, transparent = false},
    --             treesitter = true,
    --             barbar = true,
    --             markview = true,
    --             which_key = true,
    --         },
    --     })
    --     require 'diffColors'
    --     vim.cmd.colorscheme 'catppuccin'
    -- end, },

    { 'Mofiqul/dracula.nvim', priority = 1000, config = function()
        require("dracula").setup({
            transparent_bg = true})
        vim.cmd.colorscheme 'dracula'
        require 'diffColors'
        require 'myColors'
    end, },

	--    { 'nyoom-engineering/oxocarbon.nvim', config = function()
	--        vim.opt.background = "dark"
	--        vim.cmd.colorscheme 'oxocarbon'
	-- require 'myColors'
	--    end, },

    -- { "EdenEast/nightfox.nvim", config = function()
    --     vim.cmd.colorscheme 'carbonfox'
    --     require 'diffColors'
    --     require 'myColors'
    -- end, },

    -- { "olimorris/onedarkpro.nvim", priority = 1000, config = function()
    --     require("onedarkpro").setup({
    --         options = { transparency = true, }, })
    --     vim.cmd.colorscheme 'onedark_dark'
    --     require 'diffColors'
    -- end, },

    -- { 'projekt0n/github-nvim-theme',
    -- name = 'github-theme',
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --     vim.cmd('colorscheme github_dark_default')
    --     require 'myColors'
    -- end, }

    -- { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000,
    -- config = function()
    --     require 'diffColors'
    --     vim.cmd.colorscheme 'moonfly'
    --     require 'myColors'
    -- end, },

    -- { "scottmckendry/cyberdream.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --     require 'diffColors'
    --     vim.cmd.colorscheme 'cyberdream'
    --     require 'myColors'
    -- end, },

    -- { "rockerBOO/boo-colorscheme-nvim",
    -- config = function()
    --     require 'diffColors'
    --     vim.cmd.colorscheme 'boo'
    --     require 'myColors'
    -- end, },

    -- { 'maxmx03/fluoromachine.nvim',
    -- lazy = false,
    -- priority = 1000,
    -- config = function ()
    --     local fm = require 'fluoromachine'
    --
    --     fm.setup {
    --         glow = false,
    --         theme = 'delta', -- delta and retrowave are beautiful. fluoromachine too.
    --         transparent = true,
    --     }
    --
    --     vim.cmd.colorscheme 'fluoromachine'
    --     require 'myColors'
    -- end, },

    -- { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000, config = function()
    --     vim.cmd.colorscheme 'midnight'
    --     require 'myColors'
    -- end, },

    -- { "ray-x/aurora",
    -- init = function()
    --     vim.g.aurora_italic = 1
    --     vim.g.aurora_bold = 1
    --     vim.g.aurora_darker = 1
    -- end,
    -- config = function()
    --     vim.cmd.colorscheme 'aurora'
    --     require 'myColors'
    -- end,
    -- },
 
    -- { 'marko-cerovac/material.nvim',
    -- config = function()
    --     vim.g.material_style = 'deep ocean'
    --     require('material').setup({
    --         plugins = {
    --             -- "gitsigns",
    --             "nvim-web-devicons",
    --             "which-key",
    --         },
    --     })
    --     vim.cmd.colorscheme 'material'
    --     require 'myColors'
    -- end, },

    -- { 'elianiva/icy.nvim',
    -- config = function()
    --     require 'diffColors'
    --     vim.cmd.colorscheme 'icy'
    --     require 'myColors'
    -- end, },

}
