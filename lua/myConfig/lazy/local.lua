return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()
            vim.keymap.set("n", "<leader>a", function() harpoon:add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu() end)
            vim.keymap.set("n", "<C-h>", function() harpoon.ui:select(1) end)
            vim.keymap.set("n", "<C-t>", function() harpoon.ui:select(2) end)
            vim.keymap.set("n", "<C-n>", function() harpoon.ui:select(3) end)
            vim.keymap.set("n", "<C-s>", function() harpoon.ui:select(4) end)
            vim.keymap.set("n", "<leader><C-h>", function() harpoon:replace_at(1) end)
            vim.keymap.set("n", "<leader><C-t>", function() harpoon:replace_at(2) end)
            vim.keymap.set("n", "<leader><C-n>", function() harpoon:replace_at(3) end)
            vim.keymap.set("n", "<leader><C-s>", function() harpoon:replace_at(4) end)
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
