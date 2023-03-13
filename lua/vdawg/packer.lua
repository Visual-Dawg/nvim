vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'ggandor/leap.nvim',
        disable = false,
        requires = 'tpope/vim-repeat',
        config = function()
            local leap = require('leap')

            leap.opts.equivalence_classes = {' \r\n\t', '([{<', {'"', "'", '`'}}
            leap.add_default_mappings()
            vim.api.nvim_set_hl(0, 'LeapBackdrop', {
                bg = '#1c1c1c'
            })
        end
    }

    use 'tpope/vim-repeat'

    use 'sainnhe/gruvbox-material'

    use 'bkad/CamelCaseMotion'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter"
    })

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                keymaps = {
                    insert = "<C-z>o",
                    insert_line = "<C-z>O",
                    normal = "yo",
                    normal_cur = "yoo",
                    normal_line = "yO",
                    normal_cur_line = "yOO",
                    visual = "O",
                    visual_line = "gO",
                    delete = "do",
                    change = "co"
                }
            })
        end
    })

end)

