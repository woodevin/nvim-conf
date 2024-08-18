return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.completion.spell,
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.pylint,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "html", "css", "markdown" }
                }),
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
