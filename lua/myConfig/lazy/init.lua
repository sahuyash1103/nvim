return {
    {
        "nvim-lua/plenary.nvim",
    },
    {
        "eandrju/cellular-automaton.nvim",
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")
            ---@diagnostic disable-next-line: missing-parameter
            harpoon:setup()
            local function map(lhs, rhs, opts)
                vim.keymap.set("n", lhs, rhs, opts or {})
            end
            map("<leader>a", function() harpoon:list():add() end)
            map("<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
            map("<C-h>", function() harpoon:list():select(1) end)
            map("<C-t>", function() harpoon:list():select(2) end)
            map("<C-n>", function() harpoon:list():select(3) end)
            map("<C-s>", function() harpoon:list():select(4) end)
        end
    },
    {
        "ThePrimeagen/vim-apm",
        config = function()
            -- Uncomment and configure if needed
            -- local apm = require("vim-apm")
            -- apm:setup({})
            -- vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
        end
    },
    {
        "ThePrimeagen/vim-with-me",
        config = function() end
    },
}

