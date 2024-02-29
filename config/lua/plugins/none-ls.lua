return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local builtins = null_ls.builtins
        local fmt = builtins.formatting
        local comp = builtins.completion
        local diag = builtins.diagnostics
        local ca = builtins.code_actions
        null_ls.setup({
            sources = {
                comp.luasnip,   -- lua
                comp.spell,     -- spelling

                ca.eslint_d,    -- ts, js
                ca.gitsigns,    -- git

                fmt.markdownlint, -- markdown
                fmt.prettier,   -- html, css, ts, js
                fmt.stylua,     -- lua
                fmt.black,      -- python
                fmt.cmake_format, -- cmake
                --fmt.codespell, -- spelling
                fmt.fixjson,    -- json,
                fmt.google_java_format, -- java
                fmt.isort,      -- python

                diag.checkmake, -- makefile
                --diag.checkstyle, -- java
                --diag.codespell, -- spelling
                diag.dotenv_linter, --.env file's
                diag.eslint_d,  -- ts, js
                diag.flake8,    -- python
                diag.jsonlint,  -- json
                --diag.luacheck, -- lua
                diag.markdownlint, -- markdown
            },
        })

        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = '[L]SP [F]ormat' })
    end,
}
