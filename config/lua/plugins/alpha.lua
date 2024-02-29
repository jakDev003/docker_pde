return {
 {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim'
        },
        init = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            local headers = require("shared").art

            -- Set header
            math.randomseed(os.time())
            dashboard.section.header.val = headers[math.random(1, #headers)]

            -- Set menu
            dashboard.section.buttons.val = {
                dashboard.button("e", "📝  > New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "🔍  > Find file", ":Telescope find_files<CR>"),
                dashboard.button("r", "📜  > Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("x", "🐢  > Keymaps", ":Telescope keymaps<CR>"),
                dashboard.button("t", "💻  > Terminal", ":ToggleTerm<CR>"),
                dashboard.button("s", "⚙️   > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
                dashboard.button("q", "🛑  > Quit NVIM", ":qa<CR>"),
            }

            -- Send config to alpha
            alpha.setup(dashboard.opts)

            -- Disable folding on alpha buffer
            vim.cmd([[
                autocmd FileType alpha setlocal nofoldenable
            ]])
        end
    },
}
