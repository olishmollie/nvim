local wk = require("which-key")

wk.register({
    b = {
        name = "Buffers",
        d = { "<cmd>bdelete<cr>", "Delete" },
        n = { "<cmd>bnext<cr>", "Next" },
        p = { "<cmd>bprev<cr>", "Previous" },
    },
    e = { "<cmd>Neotree toggle<cr>", "NeoTree" },
    f = {
        name = "Files",
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        g = { "<cmd>Telescope live_grep<cr>", "Grep files" },
        p = { "<cmd>Telescope git_files<cr>", "Git files" }
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
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename symbol" },
        gr = { "<cmd>Telescope lsp_references<cr>", "Find references" },
    },
    t = { "<cmd>ToggleTerm<cr>", "Terminal" },
    q = { "<cmd>qa<cr>", "Quit" }
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

-- Insert mode remaps
-- " Mimic Emacs Line Editing in Insert Mode Only
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-b>", "<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-f>", "<Right>", { noremap = true })
vim.api.nvim_set_keymap("i", "<M-b>", "<C-Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "<M-f>", "<C-Right>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-d>", "<C-Del>", { noremap = true })
vim.api.nvim_set_keymap("i", "<M-bs>", "<C-W>", { noremap = true })
