-- Strip trailing whitespace on save.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

-- Format on save if enabled.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    callback = function()
        if vim.g.format_on_save then
            vim.lsp.buf.format()
        end
    end
})

-- Eagerly update buffer on changes.
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        vim.cmd([[if mode() != "c" | checktime | endif]])
    end
})
