local wk = require("which-key")

local find_files = function()
    local path = vim.loop.cwd() .. "/.git"
    local ok, _ = vim.loop.fs_stat(path)
    if ok then
        vim.cmd [[Telescope git_files]]
    else
        vim.cmd [[Telescope find_files]]
    end
end

wk.register({
    e = { "<cmd>Neotree toggle<cr>", "NeoTree" },
    f = {
        name = "Files",
        f = { find_files, "Find files" },
        g = { "<cmd>Telescope live_grep<cr>", "Grep files" }
    },
    g = {
        function()
            local term = require("config.terminal")
            term.lazygit_toggle()
        end,
        "LazyGit"
    },
    l = {
        name = "Lsp",
        j = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next diagnostic" },
        k = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Previous diagnostic" },
        f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format buffer" },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename symbol" }
    },
    t = { "<cmd>ToggleTerm<cr>", "Terminal" }
}, { prefix = "<leader>" })


-- LSP remaps
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { noremap = true })

-- Command line remaps
vim.api.nvim_set_keymap("c", "<C-h>", "<C-f>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-a>", "<Home>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-f>", "<Right>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-b>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-b>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("c", "<M-b>", "<S-Left>", { noremap = true })
vim.api.nvim_set_keymap("c", "<M-f>", "<S-Right>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-d>", "<C-Del>", { noremap = true })
vim.api.nvim_set_keymap("c", "<M-bs>", "<C-W>", { noremap = true })
