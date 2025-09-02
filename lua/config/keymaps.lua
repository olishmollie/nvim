local wk = require("which-key")
wk.add({
    mode = "n",
    { "<leader>b",  group = "Buffers" },
    { "<leader>bd", "<cmd>bdelete<cr>",              desc = "Delete" },
    { "<leader>bn", "<cmd>bnext<cr>",                desc = "Next" },
    { "<leader>bp", "<cmd>bprev<cr>",                desc = "Prev" },
    { "<leader>e",  "<cmd>Neotree toggle<cr>",       desc = "Neotree" },
    { "<leader>f",  group = "Files" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Grep files" },
    { "<leader>fp", "<cmd>Telescope git_files<cr>",  desc = "Git files" },
    {
        "<leader>g",
        function()
            local term = require("config.terminal")
            term.lazygit_toggle()
        end,
        desc = "LazyGit"
    },
    {
        mode = { "n", "v" },
        { "<leader>l",   group = "Lsp" },
        { "<leader>lj",  "<cmd>lua vim.diagnostic.goto_next()<cr>",   desc = "Next diagnostic" },
        { "<leader>lk",  "<cmd>lua vim.diagnostic.goto_prev()<cr>",   "Previous diagnostic" },
        { "<leader>lf",  "<cmd>lua vim.lsp.buf.format()<cr>",         desc = "Format buffer" },
        { "<leader>ld",  "<cmd>lua vim.lsp.buf.definition()<cr>",     desc = "Definition" },
        { "<leader>lD",  "<cmd>lua vim.lsp.buf.declaration()<cr>",    desc = "Declaration" },
        { "<leader>li",  "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Implementation" },
        { "<leader>lr",  "<cmd>lua vim.lsp.buf.rename()<cr>",         desc = "Rename symbol" },
        { "<leader>lgr", "<cmd>Telescope lsp_references<cr>",         desc = "Find references" },
        { "t",           "<cmd>ToggleTerm<cr>",                       desc = "Terminal" },
        { "q",           "<cmd>qa<cr>",                               desc = "Quit" }
    }
})

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
