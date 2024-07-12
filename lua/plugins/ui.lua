return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "s1n7ax/nvim-window-picker"
        },
        opts = {
            close_if_last_window = false,
            filesystem = {
                filtered_items = {
                    visible = true,
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false
                },
                hijack_netrw_behavior = "open_default",
            },
            window = {
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
                mappings = {
                    ["o"] = "open",
                    ["<c-o>"] = {
                        "show_help",
                        nowait = false,
                        config = { title = "Order by", prefix_key = "<c-o>" }
                    },
                    ["<c-o>c"] = { "order_by_created", nowait = false },
                    ["<c-o>d"] = { "order_by_diagnostics", nowait = false },
                    ["<c-o>g"] = { "order_by_git_status", nowait = false },
                    ["<c-o>m"] = { "order_by_modified", nowait = false },
                    ["<c-o>n"] = { "order_by_name", nowait = false },
                    ["<c-o>s"] = { "order_by_size", nowait = false },
                    ["<c-o>t"] = { "order_by_type", nowait = false },
                    ["oc"] = "noop",
                    ["od"] = "noop",
                    ["og"] = "noop",
                    ["om"] = "noop",
                    ["on"] = "noop",
                    ["os"] = "noop",
                    ["ot"] = "noop",
                }
            }
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            theme = "gruvbox-material"
        },
        config = true
    },
    {
        'nvimdev/dashboard-nvim',
        lazy = false,
        event = 'VimEnter',
        opts = function()
            local logo = [[
███╗   ███╗███████╗███╗   ███╗ █████╗  ██████╗███████╗
████╗ ████║██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝
██╔████╔██║█████╗  ██╔████╔██║███████║██║     ███████╗
██║╚██╔╝██║██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║
██║ ╚═╝ ██║███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║
╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝
            ]]

            logo = string.rep("\n", 10) .. logo .. "\n\n"

            local opts = {
                theme = "doom",
                hide = {
                    statusline = false
                },
                config = {
                    header = vim.split(logo, "\n"),
                    center = {
                        {
                            action = "lua vim.cmd('Telescope find_files')",
                            desc = " Find Files",
                            icon = " ",
                            key = "f"
                        },
                        {
                            action = "lua vim.cmd('ene | startinsert')",
                            desc = " New File",
                            icon = " ",
                            key = "n"
                        },
                        {
                            action = "lua vim.cmd('Lazy')",
                            desc = " Plugins",
                            icon = " ",
                            key = "p"
                        },
                        {
                            action = "lua vim.cmd('e ' .. vim.env.HOME .. '/.config/nvim/init.lua')",
                            desc = " Config",
                            icon = " ",
                            key = "c"
                        },
                        {
                            action = "lua vim.cmd('qa')",
                            desc = " Quit",
                            icon = " ",
                            key = "q"
                        }
                    }
                },
            }

            return opts
        end,
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            { "folke/lazy.nvim", }
        },
    }
}
