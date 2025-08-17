return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = true,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "|"
            },
            scope = {
                show_start = false,
                show_end = false
            },
            exclude = {
                filetypes = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
            },
        }
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        opts = {
            rocks = { "lua-toml" },
            -- luarocks_build_args = { "--with-lua=/my/path" }, -- Optional extra build arguments
        },
    },
}
