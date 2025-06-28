return {
    {
        "folke/snacks.nvim", priority = 1000, lazy = false,
        opts = {
            bigfile = {
                enabled = true,
                notify = true,
            },
            notifier = {enabled = true},
            image = {enabled = true},
            picker = {
                enabled = true,
                win = {input = {keys = {
                    ["<Esc>"] = { "close", mode = { "n", "i" } },
                },},},
            },
            explorer = {enabled = true},
            quickfile = {enabled = true},
            terminal = {enabled = true},
            scroll = {enabled = true},
        },
        keys = {
            { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
            { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
            { "<leader>e", function() Snacks.explorer.open() end, desc = "Open explorer" },
            { "<leader>t", function() Snacks.terminal.toggle() end, desc = "Toggle terminal" },
            { "<leader>i", function() Snacks.notifier.show_history() end, desc = "Show notification history" },
        },
    }
}
